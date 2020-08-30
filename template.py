from flask import Flask, render_template, request
app = Flask(__name__)
from flask import Flask, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL,MySQLdb
import bcrypt
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.feature_extraction.text import CountVectorizer, TfidfVectorizer
from sklearn.metrics import accuracy_score
from sklearn.pipeline import Pipeline
from sklearn.feature_extraction.text import TfidfTransformer
from sklearn.linear_model import LogisticRegression
d=[]
x=[]
a={}
z={}
b="1"
id_carry="0"
med_id="0"
a["Acne"]=1
a["Back pain"]=2
a["Blurry vision"]=3
a["Body feels weak"]=4
a["Cough"]=5
a["Ear ache"]=6
a["Emotional pain"]=7
a["Feeling cold"]=8
a["Hair falling out"]=9
a["Hard to breath"]=10
a["Head ache"]=11
a["Head hurts"]=12
a["Infected wound"]=13
a["Injury from sports"]=14
a["Internal pain"]=15
a["Joint pain"]=16
a["Knee pain"]=17
a["Muscle pain"]=18
a["Neck pain"]=19
a["Open wound"]=20
a["Shoulder pain"]=21
a["Skin issue"]=22
a["Stomach ache"]=23
a["Feeling dizzy"]=24
a["Foot ache"]=25
data = pd.read_csv('overview-of-recordings.csv')
Sentences = data.iloc[:,10]
labels = data.iloc[:,11]



def prediction(result):
    X_train, X_test, y_train, y_test = train_test_split(Sentences, labels, test_size=0.3, random_state = 42)

    my_tags = set(labels)

    logreg = Pipeline([('vect', CountVectorizer()),
                ('tfidf', TfidfTransformer()),
                ('clf', LogisticRegression(n_jobs=1, C=1e5)),
               ])
    logreg.fit(X_train, y_train)

    y_pred = logreg.predict(X_test)
    x=[result["text"]]
    print(x)
    d=logreg.predict(x)
    return d

app = Flask(__name__)

app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_DB'] = 'medicaldatabase'
mysql = MySQL(app)

@app.route('/',methods=["GET","POST"])
def login():
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password'].encode('utf-8')

        curl = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        curl.execute("SELECT * FROM users WHERE email=%s",(email,))
        user = curl.fetchone()
        curl.close()
        if user!=None:
            print(user)
            global id_carry
            id_carry=user['id']
            print(id_carry)
            if bcrypt.hashpw(password, user["password"].encode('utf-8')) == user["password"].encode('utf-8'):
                session['name'] = user['name']
                session['email'] = user['email']
                return render_template("student.html",result={})
            else:
                return render_template('loginagain.html')
        else:
            return render_template('loginagain1.html')
    else:
        return render_template("login.html")

@app.route('/register', methods=["GET", "POST"])
def register():
    if request.method == 'GET':
        return render_template("register.html")
    else:
        name = request.form['name']
        email = request.form['email']
        password = request.form['password'].encode('utf-8')
        hash_password = bcrypt.hashpw(password, bcrypt.gensalt())
        
        cur = mysql.connection.cursor()
        
        cur.execute("SELECT email FROM `users` WHERE email=%s",(email,))
        res = cur.fetchall()
        print(res)
        if(res):
            return render_template('registeragain.html')
        cur.execute("INSERT INTO users (name, email, password) VALUES (%s,%s,%s)",(name,email,hash_password,))
        mysql.connection.commit()
       
        mysql.connection.commit()
        curl = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        curl.execute("SELECT * FROM users WHERE email=%s",(email,))
        user = curl.fetchone()
        curl.close()
        global id_carry
        id_carry=user['id']
        print(id_carry)
        session['name'] = request.form['name']
        session['email'] = request.form['email']
        return redirect(url_for('student'))

@app.route('/student')
def student():
   return render_template('student.html',result={})

@app.route('/history',methods = ['POST', 'GET'])
def history():
   global id_carry
   cur = mysql.connection.cursor()
   print(id_carry)
   cur.execute("SELECT `date`, `text`, `classification` FROM `user_data` WHERE id=%s",(str(id_carry),))
   res = cur.fetchall()
   print(len(res))
   print(res)
   return render_template("history.html",result = res)
   

@app.route('/result',methods = ['POST', 'GET'])
def result():
   global id_carry
   global med_id
   if request.method == 'POST':
      result = request.form
      d=prediction(result)
      print(d[0])
      print(type(result["text"]))
      print(a[str(d[0])])
      med_id=a[str(d[0])]
      print(id_carry)
      print(med_id)
      cur = mysql.connection.cursor()
      cur.execute("SELECT DATE_FORMAT(NOW(), '%h:%i:%s %p, %W, %d %M %Y')")
      date = cur.fetchall()
      print(date[0][0]) 
      cur.execute("INSERT INTO user_data(`id`, `date`, `text`, `classification`) VALUES (%s,%s,%s,%s)",(id_carry,date[0][0],result["text"],d[0]))
      mysql.connection.commit()
      cur.execute("SELECT * FROM remedy WHERE id = %s",[str((a[str(d[0])]))])
      rv = cur.fetchall()
      print(rv[0][1])
      z["Ailments"]=rv[0][1]
      z["Common causes"]=rv[0][2]
      z["Self treatment"]=rv[0][3]
      z["Related health condition"]=rv[0][4]
      z["Seek medical care"]=rv[0][5]
      return render_template("result.html",result = z)

@app.route('/medicine',methods = ['POST', 'GET'])
def medicine():
    global med_id
    res=[]
    if request.method == 'POST':
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM medicine WHERE id = %s",[str(med_id)])
        rv = cur.fetchall()
        print(rv[0][7])
        #image = b64encode(rv[0][7]).decode("utf-8")
        #data1 = str(base64.b64encode(rv[0][7]))
        print(rv[0][7])
    return render_template("medicine.html",result = rv)

@app.route('/logout', methods=["GET", "POST"])
def logout():
    session.clear()
    return render_template("login.html")
      
 
if __name__ == '__main__':
    app.secret_key = "^A%DJAJU^JJ123"
    app.run(debug=True)

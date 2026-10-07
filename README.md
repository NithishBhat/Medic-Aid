# Medic-Aid

Medic-Aid is a web app where you describe how you're feeling, by typing or speaking, and it guesses what kind of everyday ailment you have (a cough, back pain, a headache and so on) and suggests self-care steps and over-the-counter medicines. It uses a simple machine-learning text classifier to sort descriptions into 25 categories. It started as a student project and was published as a paper in IJRASET in August 2020; the PDF is in this repo.

This is a student project and is not a substitute for professional medical advice.

## How it works

The app is written in Python with Flask and uses MySQL for users, remedies and medicines. The classifier is a scikit-learn pipeline (word counts, TF-IDF, logistic regression) trained on about 6,600 labelled symptom phrases from Appen's open medical speech dataset (`overview-of-recordings.csv`). It is trained on a 70/30 split when a prediction is made.

Once a description is classified, the app shows common causes, self-care tips, related conditions and when to see a doctor, plus matching medicines with price, main ingredient and a picture. Users log in (passwords are hashed with bcrypt) and can look back at their past queries. Voice input uses the browser's Web Speech API, so it works in Chrome.

## Running it

You need Python 3.8 and a MySQL server.

```bash
python -m venv venv
venv\Scripts\activate          # Windows  (source venv/bin/activate on macOS/Linux)
pip install -r requirements.txt

mysql -u root -e "CREATE DATABASE medicaldatabase"
mysql -u root medicaldatabase < medicaldatabase.sql

python template.py
```

The app runs at `http://127.0.0.1:5000`. Database settings come from the `MYSQL_USER`, `MYSQL_PASSWORD`, `MYSQL_HOST` and `MYSQL_DB` environment variables (defaults: `root`, empty password, `localhost`, `medicaldatabase`). Set `FLASK_SECRET_KEY` if you want sessions to survive a restart; otherwise a random key is generated at startup.

## Files

```
template.py                 Flask app: routes, login, classifier, DB queries
medicaldatabase.sql         MySQL schema and data
overview-of-recordings.csv  Labelled symptom phrases used for training
templates/                  HTML pages
static/                     Medicine images, CSS, speech-recognition JS
Published paper.pdf         The IJRASET paper
```

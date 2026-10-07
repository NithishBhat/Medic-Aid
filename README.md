# Medic-Aid

A Flask web app that classifies a user's description of their symptoms (typed or spoken) into one of 25 ailment categories using an NLP model, then recommends self-care guidance and over-the-counter medicines from a MySQL database. The work was published as a paper in IJRASET (August 2020); the PDF is included in this repo.

## Tech Stack

- **Backend:** Python 3.8, Flask, Flask-MySQLdb
- **ML / NLP:** scikit-learn (CountVectorizer + TF-IDF + Logistic Regression pipeline), pandas
- **Database:** MySQL (schema and seed data in `medicaldatabase.sql`)
- **Auth:** bcrypt password hashing, Flask sessions
- **Frontend:** Jinja2 templates, CSS, jQuery, Web Speech API (`webkitSpeechRecognition`) for voice input

## Features

- **User accounts:** registration and login with bcrypt-hashed passwords
- **Symptom classification:** free-text symptom descriptions are classified into 25 ailments (e.g. back pain, cough, headache, skin issue, stomach ache) by a TF-IDF + Logistic Regression text classifier trained on ~6,600 labelled medical speech utterances (`overview-of-recordings.csv`, from Appen's open-source dataset)
- **Voice input:** speak symptoms in the browser instead of typing (Chrome, via the Web Speech API)
- **Remedy recommendations:** for the predicted ailment, shows common causes, self-treatment tips, related conditions, and when to seek medical care
- **Medicine suggestions:** lists matching medicines with price, main ingredient, description, and image
- **History:** each query and its classification is stored per user and viewable on a history page

## Getting Started

### Prerequisites
- Python 3.8
- MySQL server (the original setup used phpMyAdmin)

### Setup

```bash
# 1. Create a virtual environment and install dependencies
python -m venv venv
venv\Scripts\activate          # Windows  (source venv/bin/activate on macOS/Linux)
pip install -r requirements.txt

# 2. Create the database and load the schema + data
mysql -u root -e "CREATE DATABASE medicaldatabase"
mysql -u root medicaldatabase < medicaldatabase.sql

# 3. Run the app
python template.py
```

The app runs at `http://127.0.0.1:5000`. MySQL connection settings (`MYSQL_USER`, `MYSQL_PASSWORD`, `MYSQL_HOST`, `MYSQL_DB`) are configured at the top of `template.py`; update them to match your local MySQL setup.

## Project Structure

```
Medic-Aid/
├── template.py                 # Flask app: routes, auth, ML model, DB queries
├── medicaldatabase.sql         # MySQL schema + data (users, remedy, medicine, user_data)
├── overview-of-recordings.csv  # Labelled symptom phrases used to train the classifier
├── requirements.txt
├── templates/                  # Jinja2 pages (login, register, student, result, medicine, history)
├── static/                     # Medicine images, CSS, and speech-recognition JS
└── Published paper.pdf         # IJRASET paper describing the project
```

## Notes

- The classifier is trained from the CSV (70/30 train/test split) inside the prediction function. Accuracy can be improved by using more of the source dataset.
- This is a student project and is **not** a substitute for professional medical advice.

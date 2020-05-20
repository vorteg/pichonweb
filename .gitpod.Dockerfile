FROM python:3.6.9

RUN pip install --no-cache-dir -r src/flask_app/requirements.txt

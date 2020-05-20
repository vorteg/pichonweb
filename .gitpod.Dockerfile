FROM python:3.6.9

COPY src/flask_app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

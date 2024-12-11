FROM python:3.9-slim

WORKDIR  /app

COPY . /app

RUN pip install flask psycopg2-binary

ENV FLASK-APP=app.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]

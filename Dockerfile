FROM python:3.7

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

#ENTRYPOINT ["python"]

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 app:app

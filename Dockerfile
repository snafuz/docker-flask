FROM python:3.6-jessie

RUN apt-get update

WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip &&\
    pip install -r /app/requirements.txt

COPY flask-app/* ./

ENV PORT 8000
CMD ["/app/run-flask.sh"]
#CMD ["/app/run-with-auto-reload.sh"]

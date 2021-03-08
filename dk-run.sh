#!/bin/bash
PORT=8080
BLUEPRINTS_PATH=$(pwd)/flask-app/blueprints

PID=./dk-flask-app.pid

#docker run -v $(pwd)/flask-app/blueprints:/app/blueprints --detach  -p 8080:8000 flask-app

if [ "$#" -gt  "0" ] && [ "$1" == "--auto" ]
  then
        docker run -v $BLUEPRINTS_PATH:/app/blueprints --detach  -p $PORT:8000 flask-app /app/run-with-auto-reload.sh > $PID
    else
        docker run -v $BLUEPRINTS_PATH:/app/blueprints --detach  -p $PORT:8000 flask-app > $PID
 fi

cat $PID

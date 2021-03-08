#!/bin/bash
PID=./dk-flask-app.pid
docker kill $(cat $PID)
rm $PID
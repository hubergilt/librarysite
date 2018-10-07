#!/bin/bash
PROJECT=librarysite
BASE=/home/usuario
FILE=$BASE/run/$PROJECT.pid
[ -f $FILE ] && PID=$(cat $FILE)
[ -f $FILE ] && kill -KILL $PID || true

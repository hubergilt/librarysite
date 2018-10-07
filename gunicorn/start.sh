#!/bin/bash
PROJECT=librarysite
USER=usuario
GROUP=users
BASE=/home/usuario
BIND=$BASE/run/$PROJECT.sock
FILE=$BASE/run/$PROJECT.pid 
WORKERS=2
source $BASE/libraryenv/bin/activate
cd $BASE/$PROJECT
gunicorn --bind unix:$BIND --pid $FILE --workers $WORKERS ${PROJECT}.wsgi
chown $USER:$GROUP $BIND
chmod 660 $BIND

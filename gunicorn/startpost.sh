#!/bin/bash
PROJECT=librarysite
BASE=/home/usuario
USER=usuario
GROUP=users
BIND=$BASE/run/$PROJECT.sock
chown $USER:$GROUP $BIND
chmod 660 $BIND

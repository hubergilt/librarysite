#!/bin/bash
PROJECT=librarysite
BASE=/home/usuario
BIND=$BASE/run/$PROJECT.sock
FILE=$BASE/run/$PROJECT.pid 
[ ! -d $BASE/run ] && mkdir -p $BASE/run || true
[ -f $BIND ] && rm -rf $BIND || true
[ -f $FILE ] && rm -rf $FILE || true

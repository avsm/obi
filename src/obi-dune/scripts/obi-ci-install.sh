#!/bin/sh

export OPAMERRLOGLEN=0
export OPAMYES=1
export OPAMJSON=$1.json

starttime=`date +%s`
opam depext -iy -j 2 $1 > $1.txt 2>&1
exitcode=$?
endtime=`date +%s`
echo $exitcode $starttime $endtime >> $1.txt
tar -cf - $1.txt $1.json

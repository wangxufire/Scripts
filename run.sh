#!/bin/bash  

start=`date +%s`

for((i=1;i<=250;i++));  
do   
  echo "run $i times"
  python3 ./scripts/qq_read.py
  current=`date +%s`
  runtime=`expr $current - $start`
  if (($runtime>20880)); then # 5.8*60*60
    echo "all work is done"
    break
  fi
  sleep 4m
done  

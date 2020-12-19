#!/bin/bash  

start=`date +%s`

for((i=1;i<=250;i++));  
do   
  echo "run $i times"
  python3 ./scripts/qq_read.py
  sleep 5m 
  current=`date +%s`
  runtime=`expr $current - $start`
  if (($runtime>21240)); then # 5.9*60*60
    echo "all work is done"
    break
  fi
done  

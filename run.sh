#!/bin/bash  

touch /tmp/keepalive

for((i=1;i<=250;i++));  
do   
  echo "run $i times"
  python3 ./scripts/qq_read.py
  sleep 5m  
done  

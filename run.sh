#!/bin/bash  

touch /tmp/keepalive

for((i=1;i<=34;i++));  
do   
  echo "run $i times"
  python3 ./scripts/qq_read.py
  sleep 10m  
done  
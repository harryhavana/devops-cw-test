#! /bin/bash

for i in {1..20}
do 
  curl http://192.168.49.2:30001|head -n 2
done 

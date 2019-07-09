#!/bin/sh

while true
do
curl https://api.darksky.net/forecast/$1/$2,$3 | mosquitto_pub  -h $4 -p $5 -u $6 -P $7 -t $8 -s
sleep $9
done

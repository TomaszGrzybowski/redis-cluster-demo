#!/bin/bash

mkdir cluster-test &&
cd cluster-test &&
mkdir 7000 7001 7002 7003 7004 7005

for idx in 7000 7001 7002 7003 7004 7005 
do 
	echo "--------------Starting redis node port $idx--------------------"
	touch $idx/redis.conf
	echo "port $idx" >> $idx/redis.conf
	echo "cluster-enabled yes" >> $idx/redis.conf
	echo "cluster-config-file nodes.conf" >> $idx/redis.conf
	echo "cluster-node-timeout 5000" >> $idx/redis.conf
	echo "appendonly yes" >> $idx/redis.conf
	
	cd $idx && redis-server ./redis.conf &

done

while true; do sleep 1000; done
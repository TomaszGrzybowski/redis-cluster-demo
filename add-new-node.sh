#!/bin/bash

PORT=$1

cd /data/cluster-test/
mkdir $PORT 
cd $PORT
touch redis.conf 
echo "port $PORT  " >> redis.conf
echo "cluster-enabled yes" >> redis.conf 
echo "cluster-config-file nodes.conf" >> redis.conf
echo "cluster-node-timeout 5000" >> redis.conf
echo "appendonly yes" >> redis.conf

echo "----Start new node with Port: $PORT----"
redis-server ./redis.conf &

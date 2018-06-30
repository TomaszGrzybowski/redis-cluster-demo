# Redis-cluster-demo - Politechnika Warszawska 2018
Ready dockerfile to create Redis cluster with 6 nodes. Politechnika Warszawa 2018


1. Create container from dockerfile
2. Go inside container and run ./redis-trib.rb create --replicas 1 127.0.0.1:7000 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005
3. Add new nodes with script create-config-files.sh
#!/bin/bash
for p in {7001..7006}; do
# 1.创建节点目录
mkdir -p ./redis/$p
# 2.拷贝redis配置文件并修改端口
cp redis.conf ./redis/$p/redis.conf
sed -i 's/REDIS_PORT/'$p'/g' ./redis/$p/redis.conf
chmod 777 ./redis/$p/redis.conf
# 3.拷贝Dockerfile文件并修改端口
cp Dockerfile ./redis/$p/Dockerfile
sed -i 's/REDIS_PORT/'$p'/g' ./redis/$p/Dockerfile
sed -i 's/CLUSTER_BUS_PORT/'$[p+10000]'/g' ./redis/$p/Dockerfile
done


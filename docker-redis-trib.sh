#!/bin/bash
domain="127.0.0.1"
if [ ! -n "$1" ]; then
    echo "$0 >>> IP: "$domain
else
	domain=$1
    echo "$0 >>> IP: $1"
fi
docker run --rm -it zvelo/redis-trib create --replicas 1 $domain:7001 $domain:7002 $domain:7003 $domain:7004 $domain:7005 $domain:7006

FROM redis

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' > /etc/timezone

COPY redis.conf /usr/local/etc/redis/redis.conf
RUN chmod 777 /usr/local/etc/redis/redis.conf

EXPOSE REDIS_PORT
EXPOSE CLUSTER_BUS_PORT

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

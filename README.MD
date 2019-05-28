1> 测试环境：Centos7

2> 首先执行：sh init.sh（只执行一次）

3> 其次执行：docker-compose up -d

4> 等所有节点启动成功后，执行：sh docker-redis-trib.sh IP_ARG(此处IP_ARG为你的局域网IP，如我的是：192.168.22.65，只执行一次)

5> 访问节点分别为：IP_ARG:7001,IP_ARG:7002,IP_ARG:7003,IP_ARG:7004,IP_ARG:7005,IP_ARG:7006

6> 若是重新启动集群，只需要docker-compose up -d 一条命令就可以了，无需再次执行.sh文件

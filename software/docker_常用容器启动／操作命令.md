## docker 常用容器启动／操作命令

## 常规命令

* 下载镜像: docker pull memcache
* 查看已有镜像: docker images
* 查看所有的容器: docker ps
* 创建镜像: docker build -t 镜像名字 目录
* 查看当前boot2docker的ip地址：boot2docker ip

## mysql

https://registry.hub.docker.com/_/mysql/

#### 启动容器

docker run --name mysqlTest -e MYSQL_ROOT_PASSWORD=123456 -d -p 3306:3306 mysql:5.5

#### 启动终端访问mysql容器

docker run -it --link mysqlTest:mysql --rm mysql:5.5 sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'
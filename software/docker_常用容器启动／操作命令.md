## docker 常用容器启动／操作命令

## mysql

#### 启动容器

docker run --name mysqlTest -e MYSQL_ROOT_PASSWORD=123456 -d -p 3306:3306 mysql:5.5

#### 启动终端访问mysql容器

docker run -it --link mysqlTest:mysql --rm mysql:5.5 sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'
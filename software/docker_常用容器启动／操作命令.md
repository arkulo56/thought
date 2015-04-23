## docker 配置一个自己的开发环境（nginx、php、mysql各自独立容器）

## 常规命令

* 下载镜像: docker pull memcache
* 查看已有镜像: docker images
* 查看所有的容器: docker ps
* 创建镜像: docker build -t 镜像名字 目录
* 查看当前boot2docker的ip地址：boot2docker ip
* 进入一个容器的shell：docker exec -i -t 665b4a1e17b6 bash
* 更新一个容器: docker -m "描述" -a "作者" 665b4a1e17b6 arkulo/php-fpm:v1


## 进入每个容器后需要统一安装的软件---------------------------------

1. apt-get update
2. apt-get install autoconf
3. apt-get install vim
4. apt-get install wget



## nginx-------------------------------------------------------

#### 启动容器

docker run --name nginx-ct -d -p 80:80 -v /local/dir:/usr/share/nginx/html arkulo/nginx:v1

* 这里要注意-v是数据卷，可以主机和容器之间共享/local/dir这个目录，在容器里面就是/usr/share/nginx/html。其实这就是我们的代码目录，调试代码就是靠共享目录实现的，很方便！！


#### 特殊设置
在/etc/nginx/conf.d/default.conf中添加php-fpm的配置：

    location ~ \.php$ {
        root           /usr/share/nginx/html;
        fastcgi_pass   192.168.59.103:9000;
        fastcgi_index  index.php;
        fastcgi_param  SCRIPT_FILENAME  /var/www/html/$fastcgi_script_name;
        include        fastcgi_params;
    }

* root 是nginx自己的workDir
* fastcgi_param  SCRIPT_FILENAME  /var/www/html/$fastcgi_script_name;这里的/var/www/html/其实是另外一个容器php-fpm里的workDir  


## mysql-------------------------------------------------------

https://registry.hub.docker.com/_/mysql/

#### 启动容器

docker run --name mysqlTest -e MYSQL_ROOT_PASSWORD=123456 -d -p 3306:3306 mysql:5.5

#### 启动终端访问mysql容器

docker run -it --link mysqlTest:mysql --rm mysql:5.5 sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'


## php-fpm---------------------------------------------------

#### 启动

docker run --name php-fpm-ct -d -p 9000:9000 -v /local/dir:/var/www/html arkulo/php-fpm:v1

* 端口映射是9000
* 同样的，把本地代码目录(/local/dir，nginx也共享了)共享到容器的/var/www/html位置，也就是容器的工作目录


## php-cli---------------------------------------------------

* 执行单独文件：docker run -it --rm --name myphpshell -v "$PWD":/usr/src/myapp -w /usr/src/myapp php:5.6-cli php object.php
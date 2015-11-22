## docker 破解初学者的迷惑，多容器配合实现开发环境（nginx、php、memcached、mysql）

新接触docker，肯定会被一层层的概念给搞晕了！也许研究一半就放弃了。这里利用一个简单的例子，让我们先快速的把docker用起来，等熟悉了再去研究那些高端的东西吧！！！

## 带着问题去学习

`这里默认您已经清楚docker的基础知识，现在处在概念向实践的过度期`

***Question：***

* 我们是把所需要的服务放在一个容器中，还是放在多个容器中？各自好处是什么？
* 我们把代码放在哪里？容器中？
* 官网下载的镜像（例如：php-fpm:5.6）都是最基本的版本，有很多扩展不全。
* 多个容器如何互相通信？

***Answer：***

* 每个服务都放在独立的容器中，这样可以自由的变更版本。例如php是一个容器，可以很轻松的更换版本
* 代码是放在主机中的，然后通过docker run的-v参数（数据卷）共享给每个需要的容器，编码的时候，只需要在主机本地修改代码就可以了，容器中会同步的
* 以官网php镜像为例，其不包含memcached扩展，只能进入容器中，自行安装！安装完后，记得commit保存修改后的容器到一个新的镜像中，这就是自己的镜像了
* 本文是用docker run -p 参数把所有的容器端口都映射到boot2docker的ip端口上了，都是通过boot2docker的ip和端口访问服务

## 用到的命令

* boot2docker初始化，启动: boot2docker init / boot2docker start
* boot2docker ssh 进入boot2docker虚拟机
* 下载镜像: docker pull memcache
* 查看已有镜像: docker images
* 查看所有的容器: docker ps(-a 查看所有容器包含没有启动的)
* 启动原有的容器: docker start 容器名称
* 启动一个新的容器: docker run --name 名称 -e 一些参数 -d -p 容器端口:虚拟机端口 新的容器名称
* 创建镜像: docker build -t 镜像名字 目录
* 查看当前boot2docker的ip地址：boot2docker ip （本文的IP是：192.168.59.103）
* 进入一个容器的shell：docker exec -i -t 665b4a1e17b6 bash
* 更新一个容器至镜像: docker -m "描述" -a "作者" 665b4a1e17b6 arkulo/php-fpm:v1
* 打包镜像（传播）：docker save arkulo/nginx > /tmp/arkulonginx.tar
* 导入镜像：docker load < /tmp/arkulonginx.tar
* 查看容器内部运行程序：docker top 容器id


## 容器需要安装的一些基础软件

`这里是具体情况具体分析，根据配置过程中的需要可以安装其他的必须软件`

1. apt-get update
2. apt-get install autoconf
3. apt-get install vim
4. apt-get install wget
5. apt-get install g++
6. apt-get install zlib1g zlib1g.dev
7. apt-get install libmemcached


## nginx安装配置

`镜像是官网的nginx镜像`

*** 启动容器***

    docker run --name nginx-ct -d -p 80:80 -v /local/dir:/usr/share/nginx/html arkulo/nginx:v1

* 这里要注意-v是数据卷，可以主机和容器之间共享/local/dir这个目录，在容器里面就是/usr/share/nginx/html。其实这就是我们的代码目录，调试代码就是靠共享目录实现的，很方便！！

*** 进入容器***

    docker exec -it nginx-ct bash

***设置nginx配置文件***
   
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

*** 测试***

这时候退出容器，然后重启容器（相当于重启nginx服务），然后在主机的浏览器中打开：

    http://192.168.59.103
    
是不是看到了nginx的欢迎界面，这一步就ok了！


*** 保存容器至镜像 ***

	docker commit -m "new nginx" -a "arkulo" 665b4a1e17b6 arkulo/nginx:v1

然后用docker images就可以看到该镜像了。`其他容器该工作相同`


## php-fpm安装配置

*** 启动 ***

docker run --name php-fpm-ct -d -p 9000:9000 -v /local/dir:/var/www/html arkulo/php-fpm:v1

* 端口映射是9000
* 同样的，把本地代码目录(/local/dir，nginx也共享了)共享到容器的/var/www/html位置，也就是容器的工作目录

*** 进入容器 ***

    docker exec -it php-fpm-ct bash
    
*** 配置 ***

因为要使用memcached，所有需要相应php的扩展，但是镜像没有该扩展，只能自己下载，然后编译安装！

去[http://pecl.php.net](http://pecl.php.net)下载最新的包，现在的是memcached-2.2.0.tgz

然后执行：
    
    tar zxvf memcached-2.2.0.tgz
    cd memcached-2.2.0
    phpize
    ./configure --enable-memcache --with-php-config=/usr/local/php/bin/php-config -with-zlib-dir
    make && make install
    
* 如果libmemcached是自己制定位置安装的，那configure的时候还要加上-with-libmemcached-dir＝\<DIR\>
* 如果编译安装没问题，会提示   `Installing shared extensions: /usr/local/php/lib/php/extensions/xxxxxxx`

做完以上步骤，在扩展目录下就会看到memcached.so文件，现在常规的做法就是去php.ini文件中加上

	extension=/usr/local/php/lib/php/extensions/xxxxxxxxx/memcached.so
	
就可以了。

`但是!!!`我在容器内没有找到php.ini文件，我看到网上也有朋友提这个问题。怎么办？？    
通过php -i可以查看到配置文件的路径

	Configuration File (php.ini) Path => /usr/local/etc/php
    Loaded Configuration File => /usr/local/etc/php/php.ini

查看该目录发现，目录下没有php.ini文件！！！-_-#  好吧，我们自己建一个php.ini文件，然后想文件里写入一行

    extension=/usr/local/php/lib/php/extensions/xxxxxxxxx/memcached.so
    
这样就可以了！！！然后保存，退出容器，重启容器，就这么简单！！再看看php -m，有memcache了吧！！

`贴士：官方镜像有提供简单扩展安装方式，但是其中不包含memcached扩展`

    FROM php:5.6-fpm
    # Install modules
    RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        && docker-php-ext-install iconv mcrypt \
        && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
        && docker-php-ext-install gd
    CMD ["php-fpm"]
 
 这是用dockerfile写的，当然也可以直接在容器内部执行命令
 
 	docker-php-ext-install gd
 	
 然后会提示你修改php.ini，相信你知道怎么做。

*** 测试 ***

退出容器，重启容器（也就是重启php-fpm服务）

然后在代码目录/local/dir中写入一个phpinfo.php文件，然后通过主机浏览器访问：

	http://192.168.59.103/phpinfo.php
	
如果看到结果就ok了。

## mysql安装配置

`使用官方的mysql镜像`

*** 启动容器 ***

	docker run --name mysql-ct -e MYSQL_ROOT_PASSWORD=123456 -d -p 3306:3306 mysql:5.5

*** 进入容器 ***

	docker exec -it mysql-ct bash
	
*** 登录mysql，然后建表 ***

	mysql -uroot -p123456
	
*** 测试 ***

现在就可以在/local/dir中写一个php文件访问数据库了

	$con = mysql_connect("192.168.59.103:3306","root","123456") or die("can not connect mysql");

## memcacched安装配置

`使用官网memcached镜像`

*** 启动 ***

	docker run --name memcached-ct -d -p 11211:11211 memcached:1.4.22
	
*** 测试 ***

	zhaoyongdembp:test arkulo$ telnet 192.168.59.103 11211
	Trying 192.168.59.103...
	Connected to 192.168.59.103.
	Escape character is '^]'.
	set id 0 0 4
	1234
	STORED
	get id
	VALUE id 0 4
	1234
	END

php代码：

	$mem = new memcached();
	$mem->addServer("192.168.59.103","11211");



## 总结

到这里我们就可以用docker配置好的环境开发php程序了。其他的服务和一些特殊的结构就留着朋友们自己去实验了！！
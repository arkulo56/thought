## innoDB存储引擎笔记1

### 数据库和实例

数据库：物理操作系统文件或其他形式文件类型的合集

实例：是操作数据库的一系列线程和共享内存管理程序

> mysql数据库实例在系统上的表现就是一个进程

`启动：`

	./mysqld_safe&
		 
`配置文件的位置：`

	/etc/my.cnf -> /etc/mysql/my.cnf -> /usr/local/etc/my.cnf -> ~/.my.cnf
	
同样的配置以最后一个配置文件为准

`数据文件的位置：`

	/usr/local/mysql/data
	
这个文件其实是一个链接，指向

	/opt_mysql_data
	
### mysql体系结构

> mysql区别于其他数据库最大的特点是：插件式的表存储引擎


![https://raw.githubusercontent.com/arkulo56/thought/master/images/tools/mysql_build.jpg](https://raw.githubusercontent.com/arkulo56/thought/master/images/tools/mysql_build.jpg)

1. 连接池组件
2. 管理服务和工具组件
3. sql接口组件
4. 查询分析器组件
5. 优化器组件
6. 缓冲组件
7. 插件式存储引擎
8. 物理文件

> 存储引擎是基于表的，而不是基于数据库的


### mysql存储引擎

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/tools/mysql_yinqing.jpg" width="500" />

查看当前mysql使用的存储引擎：

	mysql>SHOW ENGINES\G;
	


`innodb引擎`

1. mysql.5.5.8开始，作为默认引擎
2. 支持裸设备(row disk)
3. 使用多版本并发控制MVCC，来获得高并发
4. net-key-loking来避免幻读
5. 插入缓冲（insert buffer）
6. 二次写（double write）
7. 自适应哈希索引(adaptive hash index)
8. 预读(read ahead)
9. 6个字节的ROWID作为主键
10. 行锁
11. 在线事务处理(OLTP)支持

`MyISAM引擎`

1. 不支持事务
2. 表锁设计
3. 全文索引
4. 缓冲池只缓存索引文件，不缓冲数据文件（这点和很多数据库都不一样！！！用不上LRU了）
5. 可以通过myisampack工具来压缩数据文件，但文件就变为只读

`NDB引擎`

1. 集群存储引擎(share nothing集群架构)
2. 数据全部放在内存中，因此主键查找很快～
3. 问题：join操作是在数据库层完成的，不是在存储引擎层完成，意味着复杂的连接操作会有巨大的网络开销

`Archive引擎`

设计目标是是提供高速的插入和压缩功能，适合做日志等功能

1. 只有insert和select操作
2. mysql5.1开始支持索引
3. zlib算法压缩存储，压缩比可达1:10
4. 行锁
5. 不支持事务安全


`Federated引擎`

不存储数据，指向一台远程mysql数据库上的表。有点像一个透明网关，不支持远程异构数据库表

`maria引擎`

取代原来的MyISAM，给它加上一下功能：

1. 支持数据缓存
2. 行锁
3. mvcc
4. 可以开启事务
5. 更好的BLOB字符类型的处理能力


### 连接mysql

`TCP/IP`

	>mysql -uroot -h192.168.9.12 -p
	Enter password:
	
一般客户端和服务器端不在一台服务器上

`命名管道和共享内存`

1. 同一台服务器
2. --enable-named-pipe开启管道
3. --shared-memory服务器端开启共享内存，--protocol=memory客户端选项

`UNIX域套接字`

1. 同一台服务器
2. UNIX域套接字不是协议
3. 用户可以在配置文件中指定套接字文件的路径 --socket=/tmp/mysql.sock

查找套接字路径：
	
	mysql>SHOW VARIABLES LIKE 'socket';
	
客户端连接方法：

	> mysql -uroot -S /tmp/mysql.sock
	


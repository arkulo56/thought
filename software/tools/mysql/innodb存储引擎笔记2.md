## innoDB存储引擎2

### 一、innode也是有自己的版本的

版本|功能
:--|:--
老版本InnoDB|支持ACID，行锁设计，MVCC
InnoDB 1.0.x|继承以上功能，增加compress和dynamic页格式
InnoDB 1.1.x|继承以上功能，增加Linux AIO，多回滚段
InnoDB 1.1.x|继承以上功能，增加全文索引支持，在线索引添加

老版本的InnoDB，是原来和mysql一起捆绑发布的，后来到mysql5.1之后，开始支持动态加载存储引擎，因此InnoDB就有了自己的版本（5.1的时候InnoDB是1.0.x版本）

### 二、innoDB体系结构

![https://raw.githubusercontent.com/arkulo56/thought/master/images/algorithm/innodb_jiegou.png](https://raw.githubusercontent.com/arkulo56/thought/master/images/algorithm/innodb_jiegou.png)

InnoDB的体系里，就是后台线程、内存池、文件存储这三大部分

#### 后台线程

> master Thread:

负责将缓冲池中的数据异步刷新到磁盘，包括脏页的刷新、合并插入缓冲、UNDO页的回收等。

> IO Thread:

InnoDB大量采用了AIO（异步io）来处理写IO请求，该线程主要负责这些IO请求的回调处理。

IO Thread分为四种：write,read,insert buffer和log IO thread

在innodb 1.0.x后，可以通过：

	mysql> show engine innodb status\G;
	
查看IO Thread的情况，可以看到:

write thread和read thread分别增大到4各，insert buffer和log IO thread各1各

读线程的ID总是小于写线程

> Purge Thread 


1. 事务提交后，所使用的undolog可能不再需要了，该线程的作用就是回收这些undo页
2. InnoDB 1.1版本前，purge工作是在master thread线程中完成的。到该版本才独立出purge thread线程，用户可以通过配置文件`innodb_purge_threads=1`来启动独立的线程
3. InnoDB 1.2之后，可以支持多个purge thread，加快undo页回收，提高离散的读取磁盘性能

查看：

	mysql> show varibales like 'innodb_purge_threads'\G;
	

> Page Cleaner thread

1. InnoDB 1.2.x版本中引入，是将之前版本中的脏页刷新操作放到独立的线程中，减轻master thread的压力 





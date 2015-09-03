## php开发者该会的技术


## 一、linux

### 初级

1. ls/chmod/chown/rm/find/ln/cat/mount/mkdir/tar/gzip/grep/tail/less/more/ps/top/lsof/netstat/kill/tcpdump/iptables/

### 中级

1. shell脚本完成自动化
2. awk/sed命令
3. 查看基本的linux性能指标

### 高级

1. 常规操作和性能监控跟踪（watch/tcpdump /starce/ldd/ar）
2. 复杂shell（超过500行）实现备份、自动化处理、监控
3. awk/sed炉火纯青，随意操作控制处理文本统计分析各种复杂格式的数据
4. 了解内核模块加载，启动错误处理等


***

## 二、nginx

### 初级

1. 配置搭建nginx+php-fpm，搞清server/fastcgi_pass/access_log配置

### 中级

1. 了解复杂配置：多核配置、events、proxy_pass，sendfile/tcp_*，超时等
2. 代理服务器，反向静态服务器
3. 配置调优、权限配置、编译扩展
4. 运行原理（master/worker机制，epoll）

### 高级

1. 运维、监控
2. 深入原理：master/worker机制，事件处理，内存管理
3. 扩展开发

***

## 三、mysql

### 初级

1. 搭建mysql，知道innodb和myisam配置

### 中级

1. 常规优化
2. 冷热备份
3. 影响innodb和myisam性能的选项key_buffer /query_cache/sort_buffer/innodb_buffer_pool_size /innodb_flush_log_at_trx_commit等
4. 主从同步，各个binlog_format的区别
5. 性能追查，slow_log/explain
6. 索引的基本原理
7. innodb事物机制
8. 了解mongdb情况

### 高级

1. 大批量数据的增删索引等危险动作
2. 各种问题：主从延迟、跨机房数据同步、高可用
3. 关键技术：事物机制（隔离级别，锁）、触发器、分区
4. 性能优化：磁盘优化（SAS迁移至SSD）、服务器优化（内存、服务器本身）
5. 其他优化：innodb_log_buffer_size/back_log/table_open_cache /thread_cache_size/innodb_lock_wait_timeout
6. 连接池的应用
7. show * （show status/show profile）深入了解
8. 备份技术：灾备还原、冷热多备、多IDC备份
9. 阅读源码，可以利用csv引擎编写自己的存储引擎
10. mongdb写少读多的情况下考虑使用，了解其机制


***

## 四、php

### 初级

1. 数组、字符串、数据库、XML、Socket、GD/ImageMgk图片处理、mysqli/PDO

### 中级

1. 了解php-fpm大部分的配置选项（max_requests/max_children/request_terminate_timeout等）
2. mod_php和fastcgi的区别
3. 特殊用法，例如反射等
4. php的执行机制

### 高级

1. 比较偏门的配置选项（php auto_prepend_file/auto_append_file）
2. 熟悉php的工作机制，熟悉php-fpm工作机制（比如php-fpm在不同配置机器下面开启进程数量计算以及原理）
3. 对zend引擎有基本了解（vm/gc/stream）
4. 阅读过php内核源码，对php内部的大部分核心数据结构（数据类型/array/object）实现了解，对核心基础结构（zval/hashtable/gc）有深入学习
5. 除了php扩展，可以考虑去开发zend扩展，从更低层了解php

***

## 五、c/c++

### 初级

1. 指针、数组操作、字符串、常规标准API
2. 数据结构
3. 会简单的makefile
4. GCC/GDB简单调试
5. 对基本的网络编程有了解

### 中级

1. 高级数据结构（b+tree/rb-tree/skiplist/lsm-tree/trie-tree）
2. 多进程：进程间通信（共享内存/信号量/管道）
3. 多线程：解决锁冲突问题
4. 网络编程：进程模型/多线程模型/异步网络IO模型（select/poll/epoll/iocp）的差别和选型，并且熟悉常见的异步框架（ACE/ICE /libev/libevent/libuv/Boost.ASIO等）和使用，如果闲暇也可以看看一些国产自己开发的库（比如muduo）；同时能够设 计好的高并发程序架构（leader-follow/master-worker等）
5. 了解大部分C/C++后端Server开发中的问题（内存管理、日 志打印、高并发、前后端通信协议、服务监控），知道各个后端服务RPC通信问题（struct/http/thirft/protobuf等）
6. 通用模块开发方面：可以积累或者开发一些通用的工具或库 （比如异步网络框架、日志库、内存池、线程池等）

### 高级

。。。谁知道呢！！

***

## 六、redis/memcached

### 初中级

1. 了解memcached的基本特性和限制，比如最大的value值
2. 能够大概了解Memcached的内存结构 （slab机制）
3. Redis了解基本工作原理和使用，了解常规的数据类型，知道什么场景应用什么类型，了解Redis的事务等等
4. redis就了解常用数据类型底层实现存储结构（SDS/链表/SkipList/HashTable）

### 高级

1. memached比较简单，可以看源码，重点学习内存管理部分
2. redis数据结构应用：zset做排行榜排序操作、事物处理保证原子性用在秒杀类
3. redis集群：数据同步aof、高可用
4. 阅读源码：事件管理、内存管理、内部核心数据结构

***

## 七、前端

### 初级

1. html/css/js
2. html5和html4的区别
3. jquery


### 中级

1. 熟悉http协议，协议状态码200/300/400/500，基本的http协议头部
2. javascript闭包，DOM处理


### 高级

1. 深入理解http协议（包括各个细致协议特殊协议代码和背后原因，比如302静态文件缓存了，502是nginx后面php挂了之类的）
2. javascript的功力了

***

## 八、系统设计

### 初级

1. 浏览器 -> Nginx+PHP -> 数据库 （每天几十万到数百万流量网站）

### 中级

1. 浏览器 -> CDN(Squid) -> Nginx+PHP -> 缓存 -> 数据库 （每天数百万到千万流量网站）

### 高级

1. 浏览器 -> CDN -> 负载均衡 -> 接入层 -> Nginx+PHP -> 业务缓存 -> 数据库 -> 各路复杂后端RPC交互（存储后端、逻辑后端、反作弊后端、外部服务） -> 更多后端 （每天数千万到数亿流量网站）

***

## 九、提升视野

1. 函数式编程：Lisp/Haskell/Scala/Erlang
2. 静态语言：Java /Golang
3. 高大上领域：云计算（分布式存储、分布式计算、虚拟机等），机器学习（数据挖掘、模式识别等，应用到统计、个性化推荐），自然语言处理（中文分词 等），搜索引擎技术、图形图像、语音识别等等
4. 工程类领域：高性能系统、移动开发 （Android/IOS）、计算机安全、嵌入式系统、硬件

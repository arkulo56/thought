## memcached小实验


#### 测试目标

php扩展memcached包含的两种分布式算法：余数分布算法和一致性哈希算法，默认的是余数分布算法，但是很多文章称一旦加入主机水平扩展，会影响到原来的数据访问，但是一致性哈希算法就不会！

#### 环境要求

实验是用docker容器实现，以下是涉及到的容器

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/memcached/1.png" width="600" />

#### 实验代码

	  1 <?php
	  2 $server = array(
	  3         array("192.168.59.103",11211,10),
	  4         array("192.168.59.103",11212,10),
	  5         //array("192.168.59.103",11213,10),//水平扩展的服务器
	  6 );
	  7
 	  8 $memD = new Memcached;
	  9 $memD->addServers($server);
	 10
 	 11 //设置该常量为1就是一致性哈希函数，默认是余数分布算法
	 12 //$memD->setOption(Memcached::OPT_DISTRIBUTION,1);
	 13
	 14 //清空memcached缓存
	 15 //echo $memD->flush(),"<br />";
	 16
	 17 $keyStr="abcdefghijklmnopqrstuvwxyz";
	 18
	 19 //写入数据
	 20 /*
	 21 for($i=0;$i<strlen($keyStr);$i++)
	 22 {
	 23         $memD->set($keyStr[$i],$i+1);
	 24 }
	 25 */
	 26
 	 27 //读取数据
	 28 for($i=0;$i<strlen($keyStr);$i++)
	 29 {
	 30         echo $keyStr[$i],"--",$memD->get($keyStr[$i]),"<br />";
	 31 }
	 32 ?>

#### 实验结果

***余数分布算法***

2台缓存服务器，英文字母做key，对应的位置下标做value，存入memcached中，结果如下：

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/memcached/2.png" width="400" />

现加入第三台服务器，可以看到有一部分数据丢失，获取不到值（图中显示的算是较好的情况，丢失不算多，很多情况下丢失会更严重）

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/memcached/3.png" width="400" />


***重置环境***

	echo $memD->flush()
	
删除所有数据


***一致性哈希算法***

首先设置开启一致性哈希算法

	$memD->setOption(Memcached::OPT_DISTRIBUTION,1);
	

2台缓存服务器，英文字母做key，对应的位置下标做value，存入memcached中，结果如下：

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/memcached/2.png" width="400" />

现加入第三台服务器，所有数据均完整获取

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/memcached/2.png" width="400" />


#### 总结说明

php扩展memcached是支持多服务器的（分布），一旦涉及到分布式那最先要面对的问题就是如何能优雅的水平扩展，在使用过程中希望记住该处，把默认的OPT_DISTRIBUTION常量值设为1，改用一致性哈希算法！
## innoDB存储引擎2

### innode也是有自己的版本的

版本|功能
:--|:--
老版本InnoDB|支持ACID，行锁设计，MVCC
InnoDB 1.0.x|继承以上功能，增加compress和dynamic页格式
InnoDB 1.1.x|继承以上功能，增加Linux AIO，多回滚段
InnoDB 1.1.x|继承以上功能，增加全文索引支持，在线索引添加

老版本的InnoDB，是原来和mysql一起捆绑发布的，后来到mysql5.1之后，开始支持动态加载存储引擎，因此InnoDB就有了自己的版本（5.1的时候InnoDB是1.0.x版本）


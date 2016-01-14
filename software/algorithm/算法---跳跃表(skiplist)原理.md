## 跳跃表（skiplist）原理


<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/algorithm/skiplist0.png" width="600" />


跳跃表也是一种数据查找结构，如果红黑树，AVL等一样，不过因为其插入修改的时候不需要做大范围的平衡操作，只需要局部范围的修改指针（锁的范围较小），因此有很多成熟的代码在使用它，例如redis就用它来实现有序集合。

### 原理

> 简单的讲，他还是一个list！只不过查找的时候不用一个一个的去遍历元素！

看这个例子，我们给其中的一些元素多加了一个指针，指向当前位置＋2的元素，如果要遍历查找，根据上面这层的指针，我们可以减少很多次遍历！！

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/algorithm/skiplist1.png" width="600" />


如果觉得上面这种情况减少的遍历次数还不够，那我们是不是可以多加`几层`指针，`跨度`再大一些！！

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/algorithm/skiplist2.png" width="600" />


> 应该给每个元素加几层？

有些程序是按照算法取随机数，有些程序是在随机算法的基础上再和当前最大层数做比较，那最简单的做法是扔硬币，字朝上就加一层直到花朝上就停止，这就是该元素的层数



### 操作

说说操作吧，我们就来看看插入操作是如何完成的，其他操作类似。

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/algorithm/skiplist3.png" width="600" />

1. 首先要确定新增加元素的层数
2. 如果新添是i层节点，那就从head节点的forword[i]开始向后遍历，做插入的指针修改。记住！这里是操作的重点，这就像一个单链表的插入一样，只不过我们是多个单链表组合在一起。


### 代码

...稍后补充
# socket 编程

## 网络中进程之间如何通信

**本地进程间通信（IPC）的方式：**

* 消息传递（管道、FIFO、消息队列）
* 同步（互斥量、条件变量、读写锁、文件和写记录锁、信号量）
* 共享内存（匿名和具名的）
* 远程过程调用（solaris门和Sun RPC）

**那网络间进程如何通信呢？ **     

> “IP地址＋协议＋端口”可以唯一表示主机中的应用程序

## socket 是什么？

网络进程间通信就是依靠socket实现的，所谓linux一切即文件，socket是一个种特殊的文件，通过它来打开网络I/O,并且实现读写、关闭。

## socket基本操作

> open -- read/write -- close 模式

![https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/sockerLayer.png](https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/sockerLayer.png)

**服务器端：**    

* int socket(int domain,int type,int protool);
* int bind(int sockfd,const struct sockaddr *addr,socket_t addrlen);
* int listen(int sockfd,int backlog);
* int accept(int sockfd,struct sockaddr *addr,socklen_t *addrlen);
* ssize_t recv(int sockfd,void *buf,size_t len,int flags);
* int close(int fd);

**客户端：**

* int socket(int domain,int type,int protool);
* int connect(int sockfd,const struct sockaddr *addr,socklen_t addrlen);
* ssize_t send(int sockfd,const void *buf,size_t len,int flags);
* int close(int fd);

![https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/sockerModel.png](https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/sockerModel.png)

## TCP/IP三次握手和四次挥手


![https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/socketStatusTransport.png](https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/socketStatusTransport.png)


**TCP的flags字段**

* SYN 建立连接
* FIN 关闭连接
* ACK 表示响应
* PSH 有DATA数据传输
* RST 连接重置

**socket状态**


* **CLOSED**：表示初始状态
* **LISTEN**：表示服务器端的某个socket处于监听状态，可以接受连接了
* **SYN_SEND**：表示客户端已发送SYN报文，发生在客户端SOCKET执行CONNECT连接时。
* **SYN_RECV**：这个状态表示接收到了SYN报文。在正常情况下，这个状态是服务器端的SOCKET在建立TCP连接时的三次握手会话中的一个中间状态，很短暂。
* **ESTABLISHED**：表示连接已经建立
* **FIN_WAIT_1**：当SOCKET在ESTABLISHED状态时，客户端想关闭连接，于是向服务器端发送FIN报文，然后客户端就进入该状态。在实际情况下，对方应该快速回应ACK报文，所以该状态较短暂
* **CLOSING_WAIT**：服务器回应(ACK)了对方的FIN请求之后，就进入该状态，这时你需要考虑还有没有数据要传给对方，如果没有，就发送FIN请求给对方
* **FIN_WAIT_2**：当服务器端回应了客户端的FIN请求(ACK)后，客户端结束FIN_WAIT_1状态，进入当前状态，等待服务器端发送关闭请求
* **LAST_ACK**：最后关闭FIN请求已发送，等待对方ACK响应，然后就进入CLOSED状态
* **TIME_WAIT**：收到对方的FIN，并且发送了回应ACK，然后就等2MSL（240秒后）即可回到CLOSED状态。如果FIN_WAIT_1状态下，对方一次性发送FIN和ACK标志的报文时，可以直接进入到TIME_WAIT状态，而无须进入FIN_WAIT_2状态。（2MSL是TCP片在网络上的最长存活时间，表示240秒）
* **CLOSING**：双方同时发出FIN请求，致彼此都进入CLOSING状态。该情况很少，但不是没有

![https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/socketSyncClose.png](https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/socketSyncClose.png)

上图为双方同时发起SYN时的状态

**三次握手**

由客户端connect()和服务器端accept()发起并完成了三次握手过程

![https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/threeTransport.png](https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/threeTransport.png)

* 用socket函数来表示各种状态的更迭
* J是随机数
* 服务器端一次性发送了SYN和ACK，因此只用三次握手就可以了
* 三次握手后就进入了ESTABLISHED状态

**四次挥手**

![https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/fourTransport.png](https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/fourTransport.png)

* 可以看到close函数是如何完成4次挥手的

**网络字节序和主机字节序**

> 主机字节序就是我们平常说的大端和小端模式：不同的CPU有不同的字节序类型，这些字节序是指整数在内存中保存的顺序，这个叫做主机序。引用标准的Big-Endian和Little-Endian的定义如下：     
　　a) Little-Endian就是低位字节排放在内存的低地址端，高位字节排放在内存的高地址端。     
　　b) Big-Endian就是高位字节排放在内存的低地址端，低位字节排放在内存的高地址端。     
网络字节序：4个字节的32 bit值以下面的次序传输：首先是0～7bit，其次8～15bit，然后16～23bit，最后是24~31bit。这种传输次序称作大端字节序。**由于TCP/IP首部中所有的二进制整数在网络中传输时都要求以这种次序，因此它又称作网络字节序**。字节序，顾名思义字节的顺序，就是大于一个字节类型的数据在内存中的存放顺序，一个字节的数据没有顺序的问题了。     
所以：在将一个地址绑定到socket的时候，请先将主机字节序转换成为网络字节序，而不要假定主机字节序跟网络字节序一样使用的是Big-Endian。由于这个问题曾引发过血案！公司项目代码中由于存在这个问题，导致了很多莫名其妙的问题，所以请谨记对主机字节序不要做任何假定，务必将其转化为网络字节序再赋给socket

`wiki关于字节序的图，个人觉得很直观`


<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/Big_endian.png" width="300" />

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/datastruct/Little_Endian.png" width="300" />  

## 总结

这里没有贴代码，理解原理就简单了，google吧，很多～
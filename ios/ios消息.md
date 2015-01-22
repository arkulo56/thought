###基础
1. local notification和remote notification都是解决同一个问题
2. 两者的来源不同
3. 注册、安排和处理是notificaton的逻辑   
	1）消息提醒的方式：alert,icon badge number,sound   
	2) ios8以后还可以根据到达的地域进行提示（LBS）   
4. APNS是远程消息的网管，指导远程消息应该传送到哪个设备
5. 客户端app实现remote notification必须在member center中获取ssl证书    
	1）每个证书只允许一个app使用    
	2）只允许一个开发环境和一个产品环境，两个环境有不同的ip地址    
6. 信息推送方将通过一个异步的基于tcp socket的二进制接口将数据传输至APNS    
	1）推送方必须采用TLS或者SSL方式以及ssl证书进行链接    
	2）APNS为每个app提供一个发送失败的队列，发送方需要自己链接服务器去获取失败信息，避免重复发送   
7. TLS是SSL的升级版，是公钥加密的一种传输方式，具体的请看[http://www.ruanyifeng.com/blog/2014/02/ssl_tls.html](http://www.ruanyifeng.com/blog/2014/02/ssl_tls.html)

###深入学习

1. local notification和remote notification的本质区别    
	1）本地消息的预设和发送都在同一台设备上     
	2）远程消息是由自己的服务器发送给APNS服务器，然后再有APNS服务器发送给设备app
2. local notification更多的内容     
	1）scheduled time预定时间可以使某个特定时间（地域），也可以是一个时间周期    
	2）notification type是消息提示的类型     
	3）每个app只允许最多设置64个local notification    
3. remote notification更多的内容    
	1）客户端获取设备证书－》发送证书给provider－》provider发送notification给apns－》apns发送notification给设备操作系统－》设备操作系统发送notification给app    
	2）ios设备链接网络后，会自动和APNS保持一个tcp长链接    
	3）设备证书（deviceToken）是apns来确定设备的唯一标示，apns根据它发送notification    
	4）ssl证书是app的唯一标示，操作系统可以判断apns发送的信息该传给哪个app     
	5）payload就是notification数据的格式（载体），最多不能超过256个字节     
	6）自己开发需要做的是两部分：`客户端获取deviceToken并传送给provider`和`provider发送push消息给apns`     

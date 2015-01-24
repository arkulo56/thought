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
	
###register注册notification

1. registerUserNotificationSettings用来注册notification，local和remote都是用这个函数注册
2. 这个注册函数主要是针对display的形式：alert,badge icon image,sound
3. registerForRemoteNotificationTypes在ios8以后废弃了


###设定Scheduling一个local notification流程

1. 注册notification的表现形式(registerUserNotificationSettings),如果是已经注册过的，可以通过 currentUserNotificationSettings查看原来注册的类型     
2. 对 UILocalNotification进行初始化    
3. 设定date（fireDate）和time（TimeZone）,使得系统能按时间发送通知，这里可以是一个特定的时间，也可以是一个循环（周，月）     
4. alert，badge image，sound都是可以配置的，alertBody,alertAction, applicationIconBadgeNumber,UILocalNotificationDefaultSoundName等等    
5. 可以在userInfo属性中添加一些额外的数据      
6. ios8之后可以添加一些notification action（例如sound触发后会怎样）     
7. 设定一个本地通知用scheduleLocalNotification，系统会使用UILocalNotification中设定的fireday定时提醒，当然你也可以立刻看到效果presentLocalNotificationNow       
8. 设置cancelLocalNotification可以取消指定的notification，cancelAllLocalNotifications取消全部       


###设定Scheduling一个remote notification的流程

1. 使用 registerUserNotificationSettings注册notification types     
2. 注册接受远程通知（apns发送）的函数：registerForRemoteNotifications      
3. 注册成功（或失败）返回device token的接受函数，application:didRegisterForRemoteNotificationsWithDeviceToken是接受函数，ios如果失败了触发application:didFailToRegisterForRemoteNotificationsWithError:                 
4. 把device token发送给provider     
5. 为了防止device token发生变化，在app执行过程中，应该在需要的时候就去获取device token然后发送给provider

###处理notification(handling local and remote notification)

1. 正常情况下，app不在前台运行，那系统将会直接按照types执行通知提示（alert，icon number，sound） 
2. 轻拍自定义按钮，可以通过application:handleActionWithIdentifier:forRemoteNotification:completionHandler:or application:handleActionWithIdentifier:forLocalNotification:completionHandler:来获得按钮的identifier，以便区别用户点了哪个按钮，同时也能区别时远程通知还是本地通知
3. 如果用户轻拍默认按钮，系统会启动app，并执行application:didFinishLaunchingWithOptions（如果是远程通知，同时会调用application:didReceiveRemoteNotification:fetchCompletionHandler）
4. 特殊情况下，app在前台运行，系统会调用application:didReceiveLocalNotification: or application:didReceiveRemoteNotification:fetchCompletionHandler:来获取数据。


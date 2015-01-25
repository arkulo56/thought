##这些都是基本概念
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
	
***	
	
##设定一个本地通知的大致流程

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/ios/image/3.png" width="600" />
	

###上图已经很清晰，下面是部分细节

1. 注册notification的表现形式(registerUserNotificationSettings),如果是已经注册过的，可以通过 currentUserNotificationSettings查看原来注册的类型     
2. 对 UILocalNotification进行初始化    
3. 设定date（fireDate）和time（TimeZone）,使得系统能按时间发送通知，这里可以是一个特定的时间，也可以是一个循环（周，月）     
4. alert，badge image，sound都是可以配置的，alertBody,alertAction, applicationIconBadgeNumber,UILocalNotificationDefaultSoundName等等    
5. 可以在userInfo属性中添加一些额外的数据      
6. ios8之后可以添加一些notification action     
7. 设定一个本地通知用scheduleLocalNotification，系统会使用UILocalNotification中设定的fireday定时提醒，当然你也可以立刻看到效果presentLocalNotificationNow       
8. 设置cancelLocalNotification可以取消指定的notification，cancelAllLocalNotifications取消全部       


***

##设定一个远程通知的大致流程

1. 使用 registerUserNotificationSettings注册notification types     
2. 注册接受远程通知（apns发送）的函数：registerForRemoteNotifications      
3. 注册成功（或失败）返回device token的接受函数，

		application:didRegisterForRemoteNotificationsWithDeviceToken
	是接受函数，ios如果失败了触发
	
		application:didFailToRegisterForRemoteNotificationsWithError:                 
4. 把device token发送给provider     
5. 为了防止device token发生变化，在app执行过程中，应该在需要的时候就去获取device token然后发送给provider

流程图：

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/ios/image/2.png" width="400" />

图1

***

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/ios/image/1.png" width="400" />

图2

***

###处理notification(其实就是看到消息后，点击一下，app的动作)

1. 正常情况下，app不在前台运行，那系统将会直接按照types执行通知提示（alert，icon number，sound),如果不点击，到这就完了
2. 如果用户点击了提示信息，app这时候没有在前台激活，系统会启动app，并执行

		application:didFinishLaunchingWithOptions
	如果是远程通知，同时会调用
		
		application:didReceiveRemoteNotification:fetchCompletionHandler）
3. 如果用户点击了提示信息，这时候app在前台已经被激活了，系统会调用

		application:didReceiveLocalNotification:
	或者 
	
		application:didReceiveRemoteNotification:fetchCompletionHandler:
4. 特殊的情况，ios8开始支持用户添加一些action给消息，比如可以进行简单回复，yes or no按钮等等，这种情况下，如果用户进行了相应的操作，该如何处理，后面的内容会讲解

###如何设定那些特殊的action
1. 用UIMutableUserNotificationAction对象来初始化一个action（例如：acceptAction）
2. acceptAction.identifier用来唯一的标示这个action
3. acceptAction.title是按钮上显示的文字
4. acceptAction.activationMode是决定按钮被执行后，app应该在前台还是后台被激活
5. acceptAction.destructive确定这个action是不是破坏性的，例如要删除数据，那显示的按钮的颜色不一样，如果是yes，显示红色按钮
6. acceptAction.authenticationRequired设置为yes，并且点击按钮的时候设备屏幕是锁定状态的话，那需要用户输入密码
7. 上面6条设置一个action，那多个action应该组成一个group（就是一个特定的事件，例如：是否同意添加好友，可以同意，也可以不同意）并加入到一个categories（一个业务逻辑分类），ios使用UIMutableUserNotificationCategory来初始化一个这个categories（例如：inviteCategory）
8. inviteCategory.identifier是这个分类的唯一标示
9. setActions设置action group，其中forContext设置上下文环境，也就是显示的环境，值可以是UIUserNotificationActionContextDefault或者UIUserNotificationActionContextMinimal
（在屏幕锁定情况下显示的action按钮内容）
10. 最后把设定好的categories(group of actions)和types of notification一起注册：UIUserNotificationSettings settingsForTypes:types categories:categories
11. 如果注册了categories，那远程通知和本地通知在数据中都应该包含categories的标示字段      
	例如：
	本地通知：    
	
		notification.category = @"alert";       
	
	远程通知：    
	
		{
    		"aps" :  {
        	"alert" : "You’re invited!",
        	"category" : "INVITE_CATEGORY",
    		}
		}
12. 原来远程通知payload最多时256字节，现在是2k了，比以扩大许多


###回到上面曾提到的问题，用户点击了这些特殊的按钮（yes or no）

1. 先考虑app是否在前台被激活，前面已经讲过该调用那些函数
2. 然后进行特殊的action处理

		application:handleActionWithIdentifier:forRemoteNotification:completionHandler:

	或者
	
		application:handleActionWithIdentifier:forLocalNotification:completionHandler:
		
3. 第2条中的函数，函数体执行都最后，都需要加入一句

 		completionHandler()
 		

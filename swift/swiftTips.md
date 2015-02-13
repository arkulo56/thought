##swift小技巧


这里记录开发过程中遇到的小问题，特别适合新手


####tableview会自动预留44像素给头部（导航），如何关闭

在viewDidLoad函数中加入这条语句就可以

`self.automaticallyAdjustsScrollViewInsets = false`

***


####多个tableBar视图页面之间跳转代码

`self.tabBarController?.selectedIndex=0`

***

####使用CoreData如何找到数据库文件路径


`println(applicationDirectoryPath())` 打印的结果就是数据文件的路径，然后可以用sqlitebrower这种软件打开数据文件进行查看，下面这个是函数

    func applicationDirectoryPath() -> String {
        return NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true).last! as String
    }
   
***    
    
####取当前年月日

        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitDay, fromDate: date)
        year = components.year
        month = components.month
        day = components.day
        
***

####由系统生成的model文件，调用的时候会出现Unable to find specific subclass of NSManagedObject错误

需要在model文件中，class声明之前，加入一句

`@objc(类名)`

***

####如何获取view的真实size

`self.view.bounds`就可以获得实际尺寸，不过有个特殊情况，不能在viewDidLoad函数中使用哦


***

####获得AppDelegate.swift文件中的变量

	var deleGate = UIApplication.sharedApplication().delegate as AppDelegate
	
这里的变量deleGate就是AppDelegate的实例化对象，直接通过它就可以访问其内部变量


***

####改变navigation和tabbar的背景颜色

在AppDelegate.swift文件中设置：

	//navigation颜色设置-----------------------------
        UINavigationBar.appearance().barStyle = UIBarStyle.Black
        UINavigationBar.appearance().barTintColor = UIColor(red: 0.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1)
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        //tabbar颜色设置
        UITabBar.appearance().barTintColor = UIColor(red: 0.0/255.0, green: 102.0/255.0, blue: 153.0/255.0, alpha: 1)
        	UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.whiteColor()], forState: .Normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.whiteColor()], forState: .Selected)


***


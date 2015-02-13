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

        

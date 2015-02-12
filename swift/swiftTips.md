##swift小技巧


这里记录开发过程中遇到的小问题，特别适合新手


####tableview会自动预留44像素给头部（导航），如何关闭

在viewDidLoad函数中加入这条语句就可以

`self.automaticallyAdjustsScrollViewInsets = false`


####多个tableBar视图页面之间跳转代码

`self.tabBarController?.selectedIndex=0`
## c语言笔记

### gcc编译

<img src="https://raw.githubusercontent.com/arkulo56/thought/master/images/gcc_build.png" width="550" />


#### 一次性编译成可执行文件

	gcc demo.c -o demo
	
#### 分步骤编译

1. 预编译：gcc -E demo.c -o demo.i
2. 编译为汇编：gcc -S demo.i -o demo.s
3. 汇编为目标文件：gcc -c demo.s -o demo.o
4. 链接并生成可执行文件：gcc demo.o -o demo

#### 多文件编译

	gcc -c demo1.c -o demo1.o
	gcc -c demo2.c -o demo2.o
	gcc demo1.o demo2.o -o demo
	



***

## gdb调试

### 编译代码

	gcc -g demo.c -o demo
	
### 调试代码

	gdb demo
	> list 									//查看代码
	>     									//直接回车，重复上一次命令
	> break 18								//在18行设置断点
	> break func							//在函数func入口处设置断点
	> info break							//查看断点信息
	> run(r)								//运行
	> next(n)								//单条执行代码
	> p i									//打印变量i的值
	> bt 									//查看函数堆栈
	> finish								//退出函数
	> q										//退出gdb
	

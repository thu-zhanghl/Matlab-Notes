### ✨Matlab 编程珠玑

目录：

#### [编程方法](#编程方法)

* [自上而下的编程方法](#自上而下的编程方法)

#### [优秀的 Matlab Codes](#优秀的-matlab-codes)

* [变量的初始化](#变量的初始化)
  * 捷径表达式
  * 内置函数
  * 其它函数
* 符号函数、内联函数及匿名函数
* 执行字符串包含的matlab表达式：eval函数

#### 编程方法

##### 自上而下的编程方法

1.清晰地陈述出你要解决的问题。

2.确定程序所需地输入量和程序所产生的输出量。

3.为你的程序设计算法

4.将算法转化为伪代码→MATLAB 语句

5.调试MATLAB 程序

![](/assets/matlab自上而下编程方法.png)

函数式编程思想\(functional programming\)

![](/assets/matlab调试2.png)

#### 优秀的 Matlab Codes

##### 1.变量的初始化

三种方式初始化MATLAB 中的变  
量：

1．用赋值语句初始化变量

2．用 input 函数从键盘输入初始化变量

3．从文件读取一个数据

###### 捷径表达式

```
first:incr:last
```

![](/assets/捷径表达式)

###### 内置函数

![](/assets/内置函数)

###### 其它函数

1.deal函数

```
% 假如要初始化A,B,C和D为3*4阶矩阵，平常我们会用如下代码
A = zeros(3,4);
B = zeros(3,4);
C = zeros(3,4);
D = zeros(3,4);

% 利用deal()改造后,简洁相当多
[A,B,C,D] = deal(zeros(3,4));
```

##### 2.符号函数、内联函数、匿名函数

符号函数举例：

```
syms x
y=x+1;
y1=diff(y); %求导
```

匿名函数举例：

```
z=@(x)(x(1)+2*x(2));
t=z([2 3]); %计算z在x=[2 3]处的值
z=@(x,y)(x+2*y);
t=z(2,3); %计算z在x=2且y=3处的值
```

内联函数举例

```
>> h=inline('x+y','x','y')
```

符号函数y转匿名函数f：

```
f = matlabFunction(y);
```

匿名函数f转符号函数y：

```
syms x
y = f(x);
```

##### 3.执行字符串包含的matlab表达式：eval函数

对a1,a2,a3,a4,……,a100分别赋予1,2,3，……，100。

```
 for i=1:100
     eval(['a' num2str(i) '=' num2str(i)]);
 end
```

批量存数据或图片文件


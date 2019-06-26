### Dart语言入门
---
### 概述
google/全平台(Web、移动端Flutter、脚本或服务端)/面向对象 

- 开发环境搭建 
win:choco install dart-sdk

linux:sudo apt-get install dart

mac: brew install dart - -devel

[Get the Dart SDK](https://dart.dev/get-dart)

[idea中Setting VM flags failed问题](https://blog.csdn.net/oZhuiMeng123/article/details/90056326)

### 数据类型

#### 变量
- 使用var声明变量，可富裕不同类型的值
- 未初始化时，默认值为null
- 使用final声明一个只能赋值一次的变量

#### 常量
- 使用const声明常量
- 使用const声明的必须是编译期常量

#### 数据类型
- 数值型-Number 
num: int整形 double浮点型

数值型操作

运算符：+ - * /(直接除结果为浮点型)   ~/(取整) %

常用属性：isNaN isEven isOdd

常用方法：abs() round() floor() ceil() toInt() toDouble()

- 字符串-String

字符串创建：使用单引号，双引号创建字符串

使用三个引号或者双引号创建多行字符串

使用r创建原始raw字符串

运算符：+ * == []

插值表达式：${expression}

常用属性：length isEmpty isNotEmpty

常用方法：contains() subString() startsWith() endsWith()
indexOf() lastIndexOf() toLowerCase() toUpperCase() trim() trimLeft() trimRight() split() replaceXXX()  

- 布尔型-Boolean

使用bool表示布尔类型

布尔值只有true和false

- 列表-List

List(数组)创建：

创建List:var list=[1,2,3];

创建不可变的List:var list= const [1,2,3];

构造创建:var list=new List();

常用操作：[] length add() insert() remove() clear() indexOf() lastIndexOf() sort() sublist() shuffle() asMap() forEach() 

- 键值对-Map

创建Map:var language={'first':'Dart','second':'Java'};

创建不可变Map:var language=const{'first':'Dart','second':'Java'}

构造创建

常用操作：[] length isEmpty() isNotEmpty Keys values containsKey continsValue remove() forEach()

- Runes、Symbols

#### 运算符
- 算术运算符：加减乘除 + - * / ~/ % 递增递减 ++var var++ --var
- 关系运算符：运算符 == ！= > < >= <=  判断内容是否相同使用==
- 逻辑运算符: ! && ||
- 赋值运算符： 基础运算符 =  ??= 复合运算符 += -= *= /= %= ~/=
- 条件表达式：三目运算符 condition?expr1:expr2   ??运算符 expr1 ?? expr2 第一个表达式为空的话使用第二个表达式的值，不为空直接使用第一个表达式的值

#### 控制语句
- 条件语句 if语句 if...else if 语句 if...else if...else 语句
- 循环语句 for循环 for...in循环
    while语句 while循环 do...while循环
    终止循环 break  跳出当前循环 continue
- switch...case
比较类型 num String 编译器常量 对象 枚举
非空case必须有一个break
default处理默认情况

#### 方法
- 方法定义 
返回类型 方法名(参数1，参数2，...){
    方法体...
    return 返回值
}

- 方法特性
方法也是对象，并且有具体类型Function

返回值类型、参数类型都可省略

箭头语法： => expr 是{return expr;}缩写 只适用于一个表达式

方法都有返回值。如果没有指定，默认return null最后一句执行

- 可选参数

可选命名参数 {param1,param2,...}
可选位置参数 [param1,param2,...]
如果存在具体参数，可选参数声明，必须在参数后面  

- 默认参数
使用 = 在可选参数指定默认值
默认值只能是编译时常量

- 方法对象
方法可作为对象赋值给其他变量
方法可作为参数传递给其他方法

- 匿名方法
(参数1，参数2，...){
    方法体...
    return 返回值
}

可赋值给变量，通过变量进行调用
可在其他方法中直接调用或传递给其他方法

- 闭包
闭包是一个方法(对象)
闭包定义在其他方法内部
闭包能够访问外部方法内的局部变量，并持有其状态

#### 面向对象

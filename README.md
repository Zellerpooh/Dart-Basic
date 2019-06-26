### Dart语言入门
---
### chapter1-概述
google\全平台(Web、移动端Flutter、脚本或服务端)\面向对象 

- 开发环境搭建 
win:choco install dart-sdk

linux:sudo apt-get install dart

mac: brew install dart - -devel

[Get the Dart SDK](https://dart.dev/get-dart)

[idea中Setting VM flags failed问题](https://blog.csdn.net/oZhuiMeng123/article/details/90056326)

### chapter2-数据类型

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

### chapter3-运算符
- 算术运算符：加减乘除 + - * / ~/ % 递增递减 ++var var++ --var
- 关系运算符：运算符 == ！= > < >= <=  判断内容是否相同使用==
- 逻辑运算符: ! && ||
- 赋值运算符： 基础运算符 =  ??= 复合运算符 += -= *= /= %= ~/=
- 条件表达式：三目运算符 condition?expr1:expr2   ??运算符 expr1 ?? expr2 第一个表达式为空的话使用第二个表达式的值，不为空直接使用第一个表达式的值

### chapter4-控制语句
- 条件语句 if语句 if...else if 语句 if...else if...else 语句
- 循环语句 for循环 for...in循环
    while语句 while循环 do...while循环
    终止循环 break  跳出当前循环 continue
- switch...case
比较类型 num String 编译器常量 对象 枚举
非空case必须有一个break
default处理默认情况

### chapter5-方法
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

### chapter6-面向对象

#### 类与对象
- 使用关键字class声明一个类
- 使用关键字new创建一个对象 ，new 可以省略
- 所有对象都继承与Object类

属性与方法
- 属性默认会生成getter和setter方法
- 使用final声明的属性只有getter方法
- 属性和方法通过 . 访问
- 方法不能被重载

类和成员可见性
- Dart中的可见性以library(库)为单位
- 默认情况下，每一个Dart文件就是一个库
- 使用_表示库的私有性
- 使用import 导入库

#### 计算属性
- 顾名思义，肌酸属性的值是通过计算而来，本身不存储值
- 计算属性赋值，其实是通过计算转换到其他实例变量
~~~
class Rectangle {
  num width, height;

  num get area => width * height;

  set area(value) {
    width = value / 20;
  }
}
~~~

#### 构造方法
- 如果没有自定义的构造方法，则会有一个默认的构造方法
- 如果存在自定义构造方法，则默认构造方法无效
- 构造方法不能重载


命名构造方法
- 使用命名构造方法，可以实现多个构造方法
- 使用 类名.方法 实现

#### 常量构造方法
- 如果类是不可变状态，可以把对象定义为编译时常量
- 使用const声明构造方法，并且所有变量都为final
- 使用const声明对象，可以省略

#### 工厂构造方法
- 工厂构造方法类似于设计模式中的工厂模式
- 在构造方法前添加关键字 factory 实现一个工厂构造方法
- 在工厂构造方法中可返回对象

#### 初始化列表
- 初始化列表会在构造方法体执行之前执行
- 使用逗号分隔初始化表达式
- 初始化列表常用于设置final变量的值

#### 静态成员
- 使用static关键字来实现类级别的变量和函数
- 静态成员不能访问非静态成员，非静态成员可以访问静态成员
- 类中的常量需要使用static const声明 

#### 对象操作符
- 条件成员访问：  ?.
- 类型转换: as 
- 是否指定类型: is is!
- 级联操作： ..

#### 对象call方法(了解下，不建议使用)
- 如果类实现了call()方法，则该类的对象可以作为方法使用 

### chapter7-面向对象扩展

#### 继承
- 使用关键字extends继承一个类
- 子类会继承父类可见的属性和方法，不会继承构造方法
- 子类能够腹泻父类的方法、getter和setter
- 单继承，多态性

继承中的构造方法
- 子类的构造方法默认会调用父类的无名无参构造方法
- 如果父类没有无名无参构造方法，则需要显示调用父类构造方法
- 在构造方法参数后使用 : 显示调用父类构造方法

构造方法执行顺序
- 父类的构造方法在子类构造方法开始执行的位置调用
- 如果有初始化列表，初始化列表会在父类构造方法之前执行

#### 抽象类
- 抽象类使用abstract表示，不能直接被实例化
- 抽象方法不用abstract修饰，无实现
- 抽象类可以没有抽象方法
- 有抽象方法的类一定得声明成抽象类

tips:Dart中的抽象类更像是其他语言中的接口，而Dart中的接口跟其他语言中的接口有点不一样。

#### 接口
- 类和接口是统一的，类就是接口
- 每个类都隐式的定义了一个包含所有实例成员的接口
- 如果是复用已有类的实现，使用继承(extends)
- 如果只是使用已有类的外在行为，使用接口(implements)

#### Mixins
- Mixins类似于多继承，是在多类继承中重用一个类代码的方式
- 作为Mixin的类不能有显示声明构造方法
- 作为Mixin的类只能继承自Object
- 使用关键字 with 连接一个或多个Mixin

#### 操作符覆写
- 覆写操作符需要在类中定义
    返回类型 operator 操作符 (参数1，参数2，...){
        实现体...
        return 返回值
    }

- 如果覆写== ,还需要覆写对象的hashCode getter方法
![image.png](https://upload-images.jianshu.io/upload_images/1859111-5b9fa647d44bd4b8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### chapter8-枚举&类型

#### 枚举
- 枚举是一种有穷序列及的数据类型
- 使用关键字enum定一个枚举
- 常用与代替常量，控制语句等

Dart 枚举特性
- index从0开始，一次累加
- 不能指定原始值
- 不能添加方法

#### 泛型
- Dart中类型是可选的，可使用泛型限定类型
- 使用泛型能够有效的减少代码重复

泛型的使用
- 类的泛型
- 方法的泛型

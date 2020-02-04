/**
 * mixins中文意思是：混入
 * 在dart中就是在类中混入其他功能
 * 
 * 1. mixins类只能继承自Object
 * 2. mixins类不能有构造函数
 * 3. 一个类可以有多个mixins类
 * 
 * 注意，注意，注意：mixins不是继承，也不是接口，二十一种全新的特性
 * 
 * 书写格式：
 *    mixins类的书写：
 *                  声明方式与普通类没区别，但是只能继承Object，不能有构造函数
 *    mixins类的使用：
 *                  类声明的后面使用with关键字跟着mixins类
 *                  示例：class C extends Person with B,A
 *                  当有多个mixin的时候，如果存在相同方法，则后面的mixin会覆盖前面的
 *                  mixin是超类：使用mixin的类属于mixin类
 *
 *  mixin作用：
 *            强行粘合一些方法和属性而不必继承和实现
 *            mixin全局单例的情况下可以全局修改使用全局修改
 */

class Person{
  String name;
  num age;
  Person(this.name,this.age);
  printInfo(){
    print('${this.name}----${this.age}');
  }
  void run(){
    print("Person Run");
  }
}

class A {
  String info="this is A";
  void printA(){
    print("A");
  }
  void run(){
    print("A Run");
  }
}

class B {  
  void printB(){
    print("B");
  }
  void run(){
    print("B Run");
  }
}

class C extends Person with B,A{
  C(String name, num age) : super(name, age);
  
}

void main(){  
  var c=new C('张三',20);  
  c.printInfo();
  // c.printB();
  // print(c.info);

   c.run();


}



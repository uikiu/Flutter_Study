/**
 * 类的构造函数相关
 *  1. 默认构造函数
 *  2. 默认构造函数的简写方式
 *  3. 命名构造函数
 *  4. 类中的初始化列表
 *        4.1 类中的初始化列表与构造函数无关，但是写在了构造函数后面。
 *        4.2 类中的初始化列表执行在构造函数的前面
 *        4.3 类中的初始化列表作用类似与java中的静态代码块（static {}），它与构造函数设置默认值还有区别的:对象创建前，对象创建后
 *        4.4 类的初始化列表格式：
 *              非继承：(构造函数):属性名=属性值，属性名=属性值{}
 *              继承：  (子类构造函数):super(属性名1,属性名2...){};
 */


class Person {
    String name;
    int age;
    //默认构造函数:标准模式
    // Person(String name,int age){
    //   this. name = name;
    //   this.age = age;
    // }
    //默认构造函数:简写模式
    // Person(this.name,this.age);

    
    //命名构造函数
    // Person.setInfo(String name,int age){
    //   print('这是一个命名构造函数');
    //   this.name = name;
    //   this.age = age;
    // }

    Person.setInfoDefalut(String name,{int age = 0}){
      print('这是一个命名构造函数，带有默认值');
      this.name = name;
      this.age = age;
    }

    //类中初始化列表：类似于java中的代码块{}中初始化数据,这一块其实与构造函数无关，但是写在了构造函数函数后面,执行在构造函数的前面
    Person():name = '什么玩意',age = 999{
        
    }

    @override
  String toString() {
    return '''
        name = ${name}
        age = ${age}
    ''';
  } 
}

main(List<String> args) {
  print('----------类的构造函数相关-------------------');

  //默认构造函数
  // Person defalutConstructorMethod = new Person('张三',22);
  // print(defalutConstructorMethod.toString());

  //命名构造函数:使用命名构造函数时，当创建对象后需要声明对象接收
  // Person personSetInfo = Person.setInfo('张三',22);
  // print(personSetInfo);

  //命名构造函数：加入默认值
  Person setInfoDefalut =Person.setInfoDefalut('李四');
  print(setInfoDefalut);
  
  //类中的初始化列表
  // Person person = new Person();
  // print(person.toString());
}
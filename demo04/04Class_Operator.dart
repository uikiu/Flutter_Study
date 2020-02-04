import '04Class_constructor.dart';

/**
 * Dart中的对象操作符
 * ? 条件运算符
 * as  类型转换
 * ..  级联操作（连缀）
 * 
 */

class Person {
  String name;
  num age;

  Person(this.name,this.age);

  void printInfo(){
    print('${this.name}------${this.age}');
  }
}

main(List<String> args) {
  //? 条件运算符
  Person person ;
  person?.printInfo();
  person = new Person('张三', 20);
  person.printInfo();

  //is 是否属于某个类

  //as 类型转换，类似于java中的强制类型转换()
  // (person as Person).printInfo();

  //连缀操作类似于建造者模式
  person..name = '李四'
  ..age = 22
  ..printInfo();
}
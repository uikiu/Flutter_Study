class Animal {
  String name;
  num age;

//默认构造函数
  Animal(this.name, this.age);

//命名构造函数
Animal.newInstance(String name,num age){
  this.name = name;
  this.age = age;
}

  @override
  String toString() {
    return '''
      ${name}---${age}
    ''';
  }
}

class Person extends Animal {
  String sex;

  //继承的构造函数的super的写法
  //:super后面的部分就是，前面讲过的:初始化列表

  // Person(String  name,num age,String sex):super(name,age) {
  //   this.sex = sex;
  // }

  Person(String  name,num age,String sex):super.newInstance(name,age) {
    this.sex = sex;
  }
  
}

main(List<String> args) {
  Person person = new Person('王五',22,'男');
  print(person.toString());
}

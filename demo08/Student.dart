class Student {

  String name;
  int age;

/**
 * 
 * 
 *本构造函数为典型的构造函数私有化。通常构造私有化后，需要其他方式构造对象
*/
  Student._(this.name,this.age);

  @override
  String toString() {
    return '[ name=${this.name} , age=${this.age}]';
  }
}

main(List<String> args) {
 Student stu = Student._('李四', 20); 
 print('student : ${stu.toString()}');
}
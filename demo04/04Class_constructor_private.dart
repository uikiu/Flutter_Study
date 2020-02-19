class Student {

  String name;
  int age;

  // Student(String name,int age){
  //   this.name = name;
  //   this.age = age;
  // }

  // Student (this.name,this.age);

  // Student():this.name = '张三',this.age=10{}

//命名参数函数
  // Student({String name,int age}){
  //   this.name = name;
  //   this.age = age;
  // }

  //命名构造函数


  Student._(){

  }

  @override
  String toString() {
    return '[ name=${this.name} , age=${this.age}]';
  }
}



main(List<String> args) {
  print('04Class_Constructor_private\n'); 

  // var student = Student(
  //   name : '李四',
  //   age: 12
  // );

  Student student = Student._();

  //   print('student = ${student.toString()}\n');
}
import 'Student.dart';

main(List<String> args) {
  print('demo08Test\n');

  // Student student = Student();
  Student stu = Student._('李四', 20); 
  print('student : ${stu.toString()}');
}
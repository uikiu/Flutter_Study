import '04Class_private.dart';

main(List<String> args) {
  showPrivate();
}

void showPrivate() {
  print('------------私有属性，私有函数相关------------');
  Animal animal = new Animal('小狗', 2);

  // print(animal.name);//共有可访问
  // print(animal._age);//私有不可访问

  print(animal.toString());//私有方法外部可以访问
  // animal._privateMethod();//私有方法外部不可以访问
}

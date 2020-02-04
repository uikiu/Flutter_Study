/**
 * 私有属性，私有方法 相关
 * 
 * 定义成私有属性或者私有方法的格式(添加下划线_)：
 *    
 */

class Animal {
  String name;//共有
  int _age;//私有

  Animal(String name,int age) {
    this.name = name;
    this._age  = age;
  }

  @override
  String toString() {
    return '''
        name = ${name}
        age = ${_age}
    ''';
  }

  void _privateMethod(){
    print('这是一个私有方法：只能在类内部使用，不能在类外部使用');
  }
}

/**
 * get 和 set 在dart语言中是关键字
 * get 和 set 声明的方法会将方法属性化，意即：访问的时候直接.方法名称无需括号
 * get 和 set 声明的方法会成为一个类似属性的方法，直接通过.语法访问
 * get 和 set 方法格式：
 *            get 名称 {}
 *            set 名称(参数列表) {}
 *            注意：get 声明的方法没有小括号
 */
class Rect {
  num height;
  num width;

//默认构造函数的简写方式
  Rect(this.height,this.width);

  area(){
    return this.height*this.width;
  }

  get areaGet{
    return area();
  }

  set areaHeight(num value) {
    this.height = value;
  }
}

/**
 * get 和 set 声明的方法会将方法属性化
 */
main(List<String> args) {
  Rect rect = new Rect(10,2);
  //普通方法：${} 代表{}内部作为一个变量整体
  print('面积= ${rect.area()}');

  //get 使用
  print('面积= ${rect.areaGet}');
  
  //set 使用
  rect.areaHeight = 2;
  print('面积= ${rect.areaGet}');
}
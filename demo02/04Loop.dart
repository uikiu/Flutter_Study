/**
 * 七种种轮询：
 *  forI forEarch forIn map where any every
 */
main(List<String> args) {
  List fruitList = ['香蕉', '苹果', '橘子'];

  //forI
  myPrint("forI");
  for (var i = 0; i < fruitList.length; i++) {
    print(fruitList[i]);
  }

  //forIn
  myPrint("forIn");
  for (var item in fruitList) {
    print(item);
  }

  /**
     * forEarch
     * forEarch中可接收：箭头函数和匿名函数
     * 箭头函数和匿名函数的共性
     *  1. 入参个数可变：lambda表达式中参数可以是任意个数，但是集合元素类型只有一个，所以这里的item就一个就是元素类型
     *  2. =>函数：
     *      箭头函数的格式：()=>expression
     *      2.1：箭头函数只能跟一个语句，语句后面不能存在分号
     *      2.2：箭头函数后面跟一个{},同样{}中只能有一个语句且不能存在分号。-------不建议这么写
     *      2.3：箭头函数需要返回值的时候，不能写return，直接写值
     * 3. 匿名函数：
     *      匿名函数格式：(){}
     * 
     * 
     */

  

  myPrint('forEarch:箭头函数()=>expression');
  fruitList.forEach((item) => print(item));

  myPrint('forEarch:箭头函数()=>{} 不带返回值');
  fruitList.forEach((item)=>{
    print(item)
  });

   myPrint('forEarch:箭头函数()=>{} 带返回值');
  fruitList.forEach((item)=>{
     item
  });

  myPrint('forEarch:匿名函数(){}');
  fruitList.forEach((item) {
    print(item);
    return item;
  });

  //where:把满足条件的数据返回
  List<int> orderNumberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  Iterable<int> orderNumberListWhere = orderNumberList.where((number) {
    return number % 2 == 0;
  });
  print('orderNumberListWhere = $orderNumberListWhere');

  //any:如果集合中有满足条件的元素则返回true，否则返回false
  bool orderNumberListAny = orderNumberList.any((number) {
    return number > 5;
  });
  print('orderNumberListAny = $orderNumberListAny');

  //every:如果集合中每一个元素都满足条件则返回ture，否则返回false
  bool orderNumberListEvery = orderNumberList.every((number) {
    return number > 5;
  });
  print('orderNumberListEvery = $orderNumberListEvery');
}

void myPrint(String tag) {
  print('\n----------$tag----------');
}

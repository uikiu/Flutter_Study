/**
 *  =>函数：不能存在分号，不能有return关键字
 *  匿名函数：有分号，有return关键字
 */

main(List<String> args) {
  // arrowMethod();
  // showAnonymousMehthod();

    /**
 * 自执行匿名函数
 * 程序加载，自动执行
 * 定义位置：在某个函数内部
 * 格式如下：
 * (匿名函数)();
 */

((){
  print('我是自执行匿名函数');
})();
 
}
void separator(){
  print('\n--------------separator--------------');
}

/**
 *  3. =>函数：不能存在分号，不能有return关键字
 *      3.1：箭头函数只能跟一个语句，语句后面不能存在分号
 *      3.2：箭头函数后面跟一个{},同样{}中只能有一个语句且不能存在分号。-------不建议这么写
 *      3.3：箭头函数需要返回值的时候，不能写return，直接写值,必要时可以使用三目运算
 * 
 *  注意：箭头函数一定要与匿名函数做区分
 */

void arrowMethod() {
  List fruitList = ['苹果', '香蕉', '西瓜'];


  //箭头函数后面只能跟一个语句
  separator();
  fruitList.forEach((item)=>print(item));

  //箭头函数后面可以跟{},但是{}中只能有一条语句且不能存在分号
  separator();
  fruitList.forEach((item)=>{
    print(item)
  });

  //箭头函数需要返回值的时候，不能写return，直接写值
  separator();
  Iterable iterableFruitList = fruitList.map((item)=>{
      'item'+'_update'
  });
  print(iterableFruitList);

  //箭头函数需要返回值的时候，不能写return，直接写值,必要时可以使用三目运算
  separator();
  List numberList = [1,2,3,4,5];
  Iterable iterableNumberList = numberList.map((number)=>number<3?number*2:number);
  print(iterableNumberList.toList());
}

/**
 * 匿名函数
 * 匿名函数的格式：(){}
 * 匿名函数特性：
 *    1.匿名函数中必须存在(){}
 *    2.匿名函数的{}中可以有多条语句；
 *    3.匿名函数的{}中可以有返回值，要使用return
 * 
 * 注意：匿名函数一定要与箭头函数做区分
 */
void showAnonymousMehthod(){
    List numberList = [1,2,3,4,5];
    Iterable iterableNumberList = numberList.map((num){
      if(num%2==0) {
        return num;
      }
    });
    
    print(iterableNumberList);

    Iterable iterableNumberListWhere = numberList.where((num){
      return num%2==0;
    });
    print(iterableNumberListWhere);
}





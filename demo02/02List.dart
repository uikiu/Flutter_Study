/**
 *
 */
main(List<String> args) {
  // print('02List');
  // createList();
  listCommonMethod();
}

/**
 * 创建List几种方式
 */
void createList() {
  //1. 通过[]快捷创建list
  List<int> creatListInt_1 = [1, 2, 3];
  print('creatListInt_1 = $creatListInt_1');
  //2. 通过new创建List
  List newList = List.empty(growable: true);
  newList.add('张三');
  newList.add('李四');
  newList.add('王五');
  print('create list by new list instance:$newList');

  //3. 通过List.filled创建List
  /**
   * 创建特定格式的数组 List.filled(int length, E fill, {bool growable = false}); 
   * length：数组长度
   * fill：填充数据
   * growable:是否允许数组可变，true可变，false不可变
   */

  List listFilled = new List<int>.filled(3, 0, growable: true); // [0, 0, 0]
  print('listFiled = $listFilled');

  //4. 通过 List<E>.from创建对象
  /**
   * 通过Iterable创建List，List本身其实就实现了Iterable,如List定义:abstract class List<E> implements EfficientLengthIterable<E>
   */
  List<String> iterableItems = [
    'iterableItem1',
    'iterableItem2',
    'iterableItem3'
  ];
  List listFromIterableInstance = List<String>.from(iterableItems);
  print('listFromInstance = $listFromIterableInstance');

  //5. 通过List<E>.generate创建对象
  /**
   * 用生成器给所有的元素赋值：List<E>.generate(int length, E generator(int index), { bool growable: true })
   * 函数格式说明：
   *    int length:list数组长度(默认长度，是否变更由growable决定)
   *    E generator(int index):生成器使用index生成E元素
   *    growable:true 是否为固定长度
   * 生成器本质就是lambda，格式：
   *    (int index)=>{
   *        //generate list element value with index
   *    }
   * 
   */
  List<int> listGenerate = new List<int>.generate(
      3, (int index) => index * index,
      growable: true); // [0=0*0, 1=1*1, 4=2*2]
  listGenerate.add(99); //如果growable:设置为false则本元素会添加失败
  listGenerate.removeAt(1);
  print('listGenerate = $listGenerate');

  //6. 通过List.of创建对象
  //7. 通过List.unmodifiable创建对象
}

/**
 * 常用属性
 */
void listCommonAttribute() {
  //1. length 长度
  //2. reversed 翻转,返回Iterable对象
  //3. isEmpty 是否为空
  //4. isNotEmpty 是否不为空
}

void listCommonMethod() {
  //1. add 增加元素
  //2. addAll 拼接数组
  //3. indexOf  查找 传入的具体值，查到返回索引值，查不到返回-1
  //4. remove   删除 传入的具体值
  //5. removeAt 删除 传入索引值
  //6. fillRange 修改：传入起始索引和结束索引，以及修改值
  //7. insert(index,value) 指定位置插入元素
  //8. insertAll(index,list) 指定位置插入List
  //9. toList() Iterable类型转换成List
  //10. join() List转换成字符串(与split对应)
  //11. split() 字符串转换为List(与join对应):注意这个是String的函数而非List
  //12. forEarch遍历所有元素
  //13. list.map: 修改list中的元素并赋值给一个新的Iterable,注意：新的Iterable中的元素与原List中的元素个数一致。如果时过滤请使用where

  List fruitList = ['香蕉', '苹果', '橘子'];

  //reversed:list转Iterable
  Iterable fruitListReversed = fruitList.reversed;
  print('fruitListReversed = $fruitListReversed');

  //toList:reversed转List
  fruitList.toList();

  //indexOf:返回元素索引值，如果查询不到则返回-1
  int indexApple = fruitList.indexOf('苹果');
  print('苹果index = $indexApple');

  //fillRange
  fruitList.fillRange(0, 3, 'aaa');
  print('fillRangeResult = $fruitList');

  print('-------------------------------------------------------');

  List<String> ballList = ['足球', '篮球', '排球'];
  print('ball = $ballList');

  //join:list 2 String
  String joinResult = ballList.join('-');
  print('joinResult = $joinResult');

  //split: String 2 List
  List<String> splitResult = joinResult.split('-');
  bool splitResultIsList = splitResult is List;
  print('splitResult = $splitResult' +
      ' , splitResult is List=$splitResultIsList');

  //list.map: 修改list中的元素并赋值给一个新的Iterable,注意：新的Iterable中的元素与原List中的元素个数一致。如果时过滤请使用where
  List<int> numberList = [1, 2, 3];
  var listMap = numberList.map((number) {
    return number * 2;
  });
  print('listMap = $listMap');

  numberList.map(returnString);
  numberList.map(returnVoid);
}

String returnString(int number) {
  print(number);
  return number.toString();
}

void returnVoid(int number) {
  print(number);
}

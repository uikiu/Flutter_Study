/*
零、vsCode
1 快捷键：
查看默认快捷键：文件-->首选项-->键盘快捷方式
1.1 复制行：shift+alt+↓
1.2 打开/关闭资源管理器：ctrl+b
1.3 新建文件：ctrl+n
1.4 函数列表：ctrl+shift+o
1.5 格式化文档：shift+alt+f

2 插件：
2.1 注释翻译插件：Comment Translate
2.2 git管理工具：gitLines



一、基础
1. Dart语言字符串的输出使用单引号
2. 普通输出使用print函数,print函数中字符串使用+号拼接,print函数中可以直接输出任意标准api类型
3. 复杂的输出也可以使用Logging,需要导包:import 'package:logging/logging.dart';

二、变量
1. 可不预先定义变量类型，使用var声明，编译器会自动推断
2. 通过变量类型声明变量

三、类型转换
综述：其他类型转String均是类型.toString();String类型转其他类型均为类型.parse(String类型数据);

1. int转String
    123.toString();
2. string转int
    int.parse("");    
3. double转String
    3.141592653.toStringAsFixed();

四、常量：区分编译期和运行期
1. const和final定义常量,可以写类型也可以不写类型
2. final与const一样只能赋值一次，但是final是惰性初始化：即可以在编译期不赋值，而在运行期赋值（即：第一次运行时初始化）。

五、常用数据类型
1. Numbers（数值）
  1.1 int
      int只能是整型
  1.2 double
      double既可以整型，也可以是浮点型

2. Strings (字符串)
  2.1 var定义字符串：单引号和双引号均可，保证成对出现即可
    var str1 = 'this is a var str1';
    var str2 = "this is a var str2";
  2.2 String定义字符串
    String str1 = 'this is a String str1';
    String str2 = "this is a String str2";
  2.3 定义字符串使用的单引号，双引号，三引号
    1>推荐使用单引号，与官方保持一致
    2>双引号与单引号的作用完全一致
    3>三引号(三单引号或三双引号)可以换行  
  2.4 字符串拼接：+号
    String result = str1+str2；
  2.5 字符串拼接：$符号
    $符号是dart语言中变量拼接符，可以拼接任意变量


3. Booleans (布尔)
  3.1 bool
  只有true和false两个值。print可直接打印bool:显示的true或false(与java不同，java需要写字符串)
  3.2 条件语句判断
  不同的数据类型也可以做比较，当然这种情况全部为false

4. List(数组)
  在dart中，数组既是列表对象，所以数组和列表在dart中是一样的.
  书写方式：在dart中list数组与object-C的NSArray非常相似，
    1>都是通过[]表示。都可以直接在[]中直接添加元素。
      //4.1.1>oc写法
      NSArray *arry = @[@"111",@"222",@"333"];
      //4.1.2>dart写法
      var list1 = ['aaa','bbb','ccc'];
    2>oc中的数组列表只能添加NSObject对象，而dart中的数组列表可以添加object也可以添加基础数据类型  
    3>oc中可以通过其他添加元素方式：
      //4.2.1 arrayWithObject创建数组:只有一个元素
      NSArray *arr2 = [NSArray arraywithObject:@"111"];
      //4.2.2 arrayWithObjects创建数组:有多个元素,nil表示数组赋值结束
      NSArray *arr3 = [NSArray arraywithObjectis:@"111",@"222",@"333",nil];
      //4.3.1 arrayWithArray通过一个数组创建另一个数组
      NSArray *arr4 = [NSArray arraywithArray:arr3];
    4>dart中其他方式创建数组：
      见@method:showList();


5. Maps(字典)
  字典就是JAVA中的map，例如：LinkedHashMap
  

 */

main(List<String> args) {
  // print('您好,dart');

  //二、变量
  // showVar();

  //三、类型转换
  // sowTypeConvert();

  //四、常量
  // showConst();

  //五、常用数据类型
  // showString();
  //5.3 Numbers
  // showNumber();
  //5.4 bool:不同数据类型也可以做比较
  // showBool();
  //5.5 List:数组列表
  // showList();
  //5.6 Maps:字典
  showMaps();

  //六、is关键字
  isKeywords();
}

void myPrint(String methodName) {
  print('\n----------$methodName----------');
}

/**
 * 变量
 */
void showVar() {
  myPrint('showVar');
  var varStr = 'this is a string var';
  String strStr = "this. is a String String";
  var varNumber = 123;
  int intNumber = 456;
  print('varStr = ' + varStr);
  print('strStr = ' + strStr);
  print('varNumber = ' + varNumber.toString());
  print('intNumber = ' + intNumber.toString());
}

void sowTypeConvert() {
  myPrint('sowTypeConvert');
  //3.1 String转int
  String strNumber = '100';
  int str2IntNumber = int.parse(strNumber);
  print(str2IntNumber);

  //3.2 int转String
  int age = 30;
  print('my age is ' + age.toString());

  //3.3 String转double
  double doubleNumber = double.parse('1.1');
  print(doubleNumber);

  //3.4 double转String：toStringAsFixed
  String doubleStr = 1.23456789.toStringAsFixed(2);
  print('doubleStr = ' + doubleStr);
}

showConst() {
  myPrint('showConst');
  //4.1 const定义常量,可以写类型也可以不写类型
  const PI = 3.141592653;
  const int constInt = 10;
  print('PI = ' + PI.toString());
  print('constInt = ' + constInt.toString());

  //4.2 final定义常量：惰性初始化
  final date = new DateTime.now();
  print(date);
}

void showString() {
  myPrint('showString');
  //5.1 字符串声明和初始化
  String str1 = 'this is a String str1,used single quotation marks';
  var str2 = "this is a var str2,used double quotation marks";
  String str3 = '''use three single quotation marks,
        when a multiline string is required '''; //三个单引号或者三个双引号均可换行，作用是等价的
  String str4 = """use three double quotation marks,
        when a multiline string is required """; //三个单引号或者三个双引号均可换行，作用是等价的
  print('str1 = ' + str1);
  print('str2 = ' + str2);
  print('str3 = ' + str3);
  print('str4 = ' + str4);
  //5.2.1 字符串的拼接:加号+
  String strInit = 'string init';
  String strAppend = 'string append';
  print(strInit + ' ' + strAppend);
  //5.2.2 变量的拼接：$符号
  print('$strInit $strAppend');
  String name = 'kitty';
  int kittyAge = 16;
  DateTime dateTime = DateTime.now();
  print('my name is $name,my kittyAge is $kittyAge,current date is $dateTime');
}

showNumber() {
  myPrint('showNumber');
  int numberTypeInt1 = 123;
  double numberTypeDouble1 = 55.66;
  print('numberTypeInt1 = $numberTypeInt1');
  print('numberTypeDouble1 = $numberTypeDouble1');
  numberTypeDouble1 = 321;
  print('numberTypeDouble1 = $numberTypeDouble1');
}

showBool() {
  myPrint('showBool');
  bool flag = true;
  print(flag);
  var boolIntA = 10;
  var boolStringB = '10';
  if (boolIntA == boolStringB) {
    print('boolIntA == boolString');
  } else {
    print('boolIntA != boolString');
  }
}

/**
   在dart中list数组与object-C的NSArray非常相似。
    1>都是通过[]表示。都可以直接在[]中直接添加元素。
      //4.1.1>oc写法
          NSArray *arry = @[@"111",@"222",@"333"];
      //4.1.2>dart写法
          var list1 = ['aaa','bbb','ccc'];
    2>oc中的数组列表只能添加NSObject对象，而dart中的数组列表可以添加object也可以添加基础数据类型  
    3>oc中其他方式创建数组：@url:https://eezytutorials.com/ios/nsarray-by-example.php#.XjY5OWgzajg
      //3.1 arrayWithObject创建数组:只有一个元素
          NSArray *arr2 = [NSArray arraywithObject:@"111"];
      //3.2 arrayWithObjects创建数组:有多个元素,nil表示数组赋值结束
          NSArray *arr3 = [NSArray arraywithObjectis:@"111",@"222",@"333",nil];
      //3.3 arrayWithArray通过一个数组创建另一个数组
          NSArray *arr4 = [NSArray arraywithArray:arr3];
    4>dart中其他方式创建数组：
      //4.1 List<E>.filled(int length,E fill, {bool growable: false})  创建指定长度length，指定初始值fill，指定是否可增长的数组growable

      //4.2 List.from(Iterable elements, { bool growable: true })  通过一个ietrable生成List
          List<String> iterableItems = ['iterableItem1','iterableItem2','iterableItem3'];
          List listFromIterableInstance =List<String>.from(iterableItems);
      //4.3 List<E>.generate(int length, E generator(int index), { bool growable: true }) 通过自定义生成器生成元素E
          List<int> listGenerate = new List<int>.generate(3, (int index) => index * index,growable: true); // [0=0*0, 1=1*1, 4=2*2]
  
  参考：@url: https://api.dart.dev/stable/2.7.1/dart-core/List-class.html
 */
void showList() {
  myPrint('showList');
  /**
   * 快速创建list数组
   */
  var listString1 = ['aaa', 'bbb', 'ccc'];
  var listInt1 = [1, 2, 3, 4];
  print('listString1 = $listString1');
  print('listInt1 = $listInt1');
  List listString2 = ['aaa2', 'bbb2', 'ccc2'];
  print('listString2 = $listString2');

  /* 
  通过new创建list数组,并指定数据类型
  */
  List newList = new List<String>();
  newList.add('张三');
  newList.add('李四');
  newList.add('王五');
  print('create list by new list instance:$newList');

  /**
   * 创建特定格式的数组 List.filled(int length, E fill, {bool growable = false}); 
   * length：数组长度
   * fill：填充数据
   * growable:是否允许数组可变，true可变，false不可变
   */

  List listFilled = new List<int>.filled(3, 0, growable: true); // [0, 0, 0]
  print('listFiled = $listFilled');

  /**
   * 通过Iterable创建List，List本身其实就实现了Iterable,如List定义:abstract class List<E> implements EfficientLengthIterable<E>
   */
  List<String> iterableItems = ['iterableItem1', 'iterableItem2', 'iterableItem3'];
  List listFromIterableInstance = List<String>.from(iterableItems);
  print('listFromInstance = $listFromIterableInstance');

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
  List<int> listGenerate =
      new List<int>.generate(3, (int index) => index * index, growable: true); // [0=0*0, 1=1*1, 4=2*2]
  listGenerate.add(99); //如果growable:设置为false则本元素会添加失败
  listGenerate.removeAt(1);
  print('listGenerate = $listGenerate');

  //TODO List.of(Iterable<E> elements, { bool growable: true })
  //TODO List.unmodifiable(Iterable elements)

  //list长度
  int listFilledLength = listFilled.length;
  print('listFilled length = $listFilledLength');

  //list中元素
  String listString1_0 = listString1[0];
  int listFilled_1 = listFilled[1];
  print('listString1[0] = $listString1_0,listFilled[1] = $listFilled_1');
}

/**
 * dart中的map与Object-C中的NSDictionary非常相似
 * 1 创建Map对象
 * 1.1 均可通过{}快速创建对象
         ```objective-C
             NSDictionary *dictionary = @{
                         @"anObject" : someObject,
                      @"helloString" : @"Hello, World!",
                      @"magicNumber" : @42,
                           @"aValue" : someValue
            };
        ```

        ```dart
              Map map = {
              'anObject': someObject,
           'helloString': 'Hello,World!',
           'magicNumber': 42,
                'aValue': somValue,
            };
        ```
* 1.2 均可通过new创建对象
* 1.3 OC中的NSDectionary其他创建方法
      //1.3.1创建空字典
      NSDictionary dictionary];
      //1.3.2 创建一组键值对的字典
      + (instancetype)dictionaryWithObject:(ObjectType)object forKey:(id<NSCopying>)key;
      //1.3.3 创建多组键值对的字典
      + (instancetype)dictionaryWithObjects:(NSArray<ObjectType> *)objects forKeys:(NSArray<id<NSCopying>> *)keys;
      //1.3.4 通过其他NSDectionary创建NSDectionary
      + (instancetype)dictionaryWithDictionary:(NSDictionary<KeyType, ObjectType> *)dict;
      //1.3 其他创建方法健：@url https://developer.apple.com/documentation/foundation/nsdictionary?language=objc
* 1.4 dart中的Map其他创建方法
      //1.4. see All:@url https://api.dart.dev/stable/2.3.1/dart-core/Map-class.html

      
    


* 2. 获取Map中的元素
      ```objective-C
      [dictionary objectForKey:@"key"];
      ```

      ```dart
        map['keyName'];
      ```

 */
void showMaps() {
  myPrint('showMaps');

  //map类似于json对象，键值对形式存在.key必须用单引号或者双引号引起来

  //1. 使用{}创建map
  Map person = {
    'name': '张三',
    'age': 20,
    'work': ["程序员", "送外卖"]
  };
  //打印map全部信息
  print(person);
  //打印map中的某个key对应的value
  print(person['name']);
  print(person['age']);
  print(person['work']);

  //2. 使用new创建Map
  Map newMap = new Map();
  newMap['name'] = '李四 ';
  newMap['age'] = 22;
  newMap['work'] = ['老师', '医生'];
  print('newMap = $newMap');
}

/**
 * is 关键字判断数据类型。
 * 1. 与java中的instanceof类似
 *      instance isInstanceof ClassName
 * 
 *      ```java
 *      String str1 = "abc";
        if (str1 instanceof String) {
            System.out.println("str1 is instanceof String");
        } else {
            System.out.println("str1 is not instanceof String");
        }
 *      ```
 * 2. 与OC中的isKindOfClass类似
 *    [myObject isKindOfClass:[NSString class]]
 *    ```objective-C    
      if ([teacher isKindOfClass:[Teacher class]]) {
          NSLog(@"teacher 是 Teacher类或Teacher的子类");
      }     
 *    ```
 */
void isKeywords() {
  myPrint('isKeywords');
  var str = '123';
  if (str is String) {
    print('是String类型 ');
  } else {
    print('非String类型');
  }
}

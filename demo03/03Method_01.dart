/**
 * 一、嵌套函数
 * 二、可变参数函数
 *     (...,[可变参数列表]);
 * 三、命名参数函数
 *     (...,{命名参数列表});
 * 
 * 可变参数函数与命名参数函数的区别：
 *    命名函数与可变函数非常相似，但是可变参数在实参传入的时候不能选择哪一个传入哪一个不传入，而命名参数函数却可以根据名称进行选择传入。
 */
main(List<String> args) {
  // methodNested();
  // showVarParameters();
  // showDefalutParameters();
  // showNameParameters();
  showMethodAsParameter();
}

void myPrint(String tag) {
  print('\n----------$tag----------');
}

/**
 * 函数嵌套
 */
void methodNested() {
  //内部嵌套方法1
  int returnVoid(int number) {
    myPrint(number.toString());
    return number * number;
  }

  List<int> numberList = [1, 2, 3];
  Iterable<int> iterable = numberList.map(returnVoid);
  print(iterable);

  //内部嵌套方法2
  void printMethodNested() {
    print('内部嵌套方法2');
  }

  printMethodNested();
}



  /**
 * 可变参数函数
 * 可变参数函数格式：
 * (...,[可变类型 可变对象,...]);
 * 可变参数用[]扩起来，放到形参列表末尾
 * 可变参数列表，实参传入的时候不能选择，必须依次传入，如果不想赋值则传入null。形参一侧需要对可变参数做非空判断
 */
void showVarParameters() {
  //可变参数函数
  void varParameters(String name, [int age, String phoneNumber]) {
    if (null == phoneNumber || phoneNumber.isEmpty) {
      phoneNumber = 'unknown';
    }
    print('$name-----$age-----$phoneNumber');
  }

  varParameters('张三', 22, '15666666666');
  varParameters('luly');
  varParameters('kitty', 12);
  //可变参数列表，实参传入的时候不能选择，必须依次传入，如果不想赋值则传入null
  varParameters('emma', null, '15888888888');
}

/**
 * 默认函数参数，即：如果用户不传入则使用默认值。默认值函数参数必须是：可变参数函数或者命名参数函数
 */
void showDefalutParameters() {
  /**
 * 默认参数：
 * 默认参数在定义的时候直接赋值
 */
  void defalutParameters(String name, [String sex = '保密', int age = -1]) {
    if (null == sex || sex.isEmpty) {
      sex = '保密';
    }

    String ageStr = age.toString();
    if (age < 0) {
      ageStr = '保密';
    }
    print('$name------$sex------$ageStr');
  }

  defalutParameters('李四', '男', 32);
  defalutParameters('Ava', null, 16);
}

enum Gender { male, female, unknown }

/**
 * 命名参数函数
 * 命名参数与OC中的语法非常相似，指明了我要赋值的参数名称。
 * 格式如下：
 * {parameterName:parameterValue}
 * 
 * 说明：命名函数与可变函数非常相似，但是可变参数在实参传入的时候不能选择哪一个传入哪一个不传入，而命名参数函数却可以根据名称进行选择传入。
 */
void showNameParameters() {
  void namedParameters(String name,
      {int age = -1, Gender gender = Gender.unknown}) {
    String ageStr = age < 0 ? '保密' : age.toString();
    String genderStr;
    switch (gender) {
      case Gender.male:
        genderStr = '男';
        break;
      case Gender.female:
        genderStr = '女';
        break;
      case Gender.unknown:
      default:
        genderStr = '未知';
        break;
    }

    print('$name------$genderStr------$ageStr');
  }

  namedParameters('王五',age: 20);
}


/**
 * 在传入函数的时候，
 *    1. 函数无参：直接使用函数名称即可，不要添加括号，例如:fnX(fn1);
 *    2. TODO:函数有参：不知道如何处理
 * 
 */
void showMethodAsParameter(){
  
  //定义将函数作为参数的函数
  void fnX(fn){
    fn();
  }
  //无参函数:可直接作为参数使用
  void fn1() {
    print('------fn1------');
  }

  //TODO 有参函数还不知道如何作为参数使用
  void fn2(int number){
    print('fn2=$number');
  }


  //fn1不能有括号
  fnX(fn1);
  // fnX(fn2(12));




  
}

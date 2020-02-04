/**
 * Dart 三种库
 *  
 *  一、自定义库
 *      import 'lib/xxx.dart';
 * 
 *  二、系统内置库
 *      import 'dart:math';
 *      import 'dart:io';
 *      import 'dart:convert'
 * 
 * 
 * 
 *  三、Pub包管理系统中的库：https://pub.dev/packages
 * 
 *      https://pub.dev/packages
 *      https://pub.flutter-io.cn/packages
 *      https://pub.dartlang.org/flutter/
 * 
 * 类名冲突： as newLibName
 *      当多个lib中有形同的类名时，怎么区分不同的包的类名
 *      import 'lib/Person1.dart';
 *      import 'lib/Person2.dart' as lib2// as关键字对某个类的包名重命名。使用时在类名前面加入lib2即可
 *
 * 
 * 部分导入： show methodName
 *      import 'lib/myMath.dart' show getName; //此时只能使用myMath中的getName方法
 *      import 'lib/myMath.dart' hide getName; //此时会隐藏getName方法，其他方法均可使用
 * 
 * 
 * 延迟加载：deferred as
 *      延迟加载也称之为懒加载，可以在需要的时候再加载。这样做的好处是减少app的启动时间。
 *      格式：
 *          import 'XXX' deferred as newName;//声明懒加载
 *          newName.loadLibrary();//使用懒加载
 *      示例：
 *          import 'package:dererred/hello.dart' deferred as hello;
 *          greet() async {
 *              //懒加载通常耗时，所以使用await
 *              await hello.loadLibrary();
 *              //加载库完成可以使用
 *              hello.printGreeting();
 *          }
 * 
 * 对库分片：part 'partName'
 *      当库很大的时候，可以对库进行分片  
 * 
 *      例如：math.dart
 *            ```dart
 *                library dart.math;
                  part "jenkins_smi_hash.dart";
                  part "point.dart";
                  part "random.dart";
                  part "rectangle.dart";
 *            ```
 * 
 * 
 * 对库导入导出：import export
 *      ```dart
 *            import 'dart:async';
              import 'dart:_internal' hide Symbol;
              import 'dart:collection'
                      show HashMap, HashSet, Queue, ListQueue, MapBase, UnmodifiableMapView;
              import 'dart:convert';
              import 'dart:developer' hide log;
              import 'dart:isolate';
              import 'dart:math';
              import 'dart:typed_data';

              export 'dart:_http';
              export 'dart:_internal' show HttpStatus;
 *      ```
 * 
 */




import 'dart:io';
// import "dart:math";
import 'dart:math';

main(){
 
    print(min(12,23));

    print(max(12,25));
    
}
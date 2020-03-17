# 异步widget的优势

* 仅针对特定的widget更新，不必调用setState更新整个UI。即，避免了自己更新而让全局更新。但是无法保证其他widget更新而触发全局更新setState(){}。
* 执行数据获取异常，错误等都已经标记，无需自己定义然后判断

## 异步widget的本质

异步widget的本质是将StatefulWidget与Future结合


## 全局更新和局部更新

 * 全局更新
  ```dart
    setState((){});
  ```

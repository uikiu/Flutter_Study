# Flutter

## 运行Flutter

flutter run后可以使用下面快捷键修改。前提是按住鼠标左键别放

r 键：点击后热加载
p 键：显示网格，这个可以很好的掌握布局情况，工作中很有用
o 键：切换android和io的预览模式
q 键: 提出调式预览模式

---

## 快捷方式

快速导包: fim = flutter import
实例化类可以不写new关键字

---

## lib

### 入口函数

dart 的默认入口函数

```dart
void main (){
    //do something
}
```

运行到App上可以使用runApp函数

```dart
void main(){
    runApp();
}
```

简写方式:非匿名箭头函数

```dart
void main() => runApp();
```
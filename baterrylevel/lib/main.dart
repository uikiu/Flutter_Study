import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


//------------------------------------------------------------------------------------------------

class _MyHomePageState extends State<MyHomePage> {
  static const platform = const MethodChannel('samples.flutter.io/battery');

  String _baterryLevel = 'unknown battery level';

  Future<Null> _getBaterryLevel() async {
    String baterryLevel;

    //注意：这里人入参是String，出参是Future
    //入参参数"getBaterryLevel"在平台端是唯一的，通过MethodCall区分
    final int result = await platform.invokeMethod('getBaterryLevel');
    baterryLevel = 'Baterry level at $result % .';

    //update state
    setState(() {
      _baterryLevel = baterryLevel;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Get Baterry Level'),
              onPressed: _getBaterryLevel
              ),
              Text(_baterryLevel),
          ],
        ),
      ),
    );
  }
}

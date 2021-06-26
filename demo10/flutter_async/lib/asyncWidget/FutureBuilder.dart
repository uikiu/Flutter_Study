import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_async/bean/FilmList.dart';
import 'package:flutter_async/widget/error.dart';
import 'package:flutter_async/widget/film.dart';
import 'package:flutter_async/widget/loading.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//typedef dd = Widget Function(BuildContext context);

void main() =>runApp(FutureTestApp());

// const String TITLE = 'Future Study';
 String TITLE = 'Future Study';

class FutureTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TITLE,
      theme: ThemeData.light(),
      home: FutureTestPage1(),
    );
  }
}

class FutureTestPage1 extends StatefulWidget {
  @override
  _FutureTestPage1State createState() => _FutureTestPage1State();
}

class _FutureTestPage1State extends State<FutureTestPage1> {
  String title;

  Future<FilmList> filmListFuture;
  //异步获取数据标准写法
  Future<FilmList> _loadFilmLst() async{

    //1. get htt response
    final response  = await http.get("http://api.douban.com/v2/movie/in_theaters?apikey=0df993c66c0c636e29ecbb5344252a4a&start=0&count=10");
    print(response.body);
    //2. convert response body 2 json
    final responseJson = json.decode(response.body);
    //3. new entity by json
    return FilmList.fromJson(responseJson);
  }

  @override
  void initState() {
    super.initState();
    filmListFuture = _loadFilmLst();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        title: Text(TITLE),
      ),
      body: Container(
        child: FutureBuilder(
          future: _loadFilmLst(),
            builder:(context,snapshot){
              Widget result;
              if(snapshot.connectionState == ConnectionState.waiting) {
                result = LoadingWidget();
              } else if(snapshot.connectionState == ConnectionState.done) {
                if(snapshot.hasError) {
                  result = Error1Widget();
                }else {
                  //todo 这里应该加入非空判断
                  result = Film(snapshot.data);
                }
              }
              return result;
            }
        ),

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: (){

          //update title
          TITLE = 'HelloKitty';
          setState(() {

          });
        },
      ),
    );
  }
}


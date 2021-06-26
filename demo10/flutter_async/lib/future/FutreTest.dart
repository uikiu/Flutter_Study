import 'package:flutter/material.dart';
import 'package:flutter_async/bean/FilmList.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() =>runApp(FutureTestApp());

 const String TITLE = 'Future Test';

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


  Future<FilmList> filmListFuture;
  //异步获取数据标准写法
  Future<FilmList> _loadFilmLst() async{
    //1. get htt response
    final response  = await http.get("http://api.douban.com/v2/movie/in_theaters?apikey=0df993c66c0c636e29ecbb5344252a4a&start=0&count=10");
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
      body: Column(

        children: <Widget>[
          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('吻我'),
            onPressed: (){
              //TODO something
              //film_list is null
              filmListFuture.then((filmList) =>print('film_list.counter:  ${filmList.toJson().toString()}'))
                  .catchError((err)=>print(err));

            },
          ),
        ],
      )
    );
  }
}


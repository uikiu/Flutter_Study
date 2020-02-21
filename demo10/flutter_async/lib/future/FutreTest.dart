import 'package:flutter/material.dart';
import 'package:flutter_async/bean/film_list.dart';
import 'package:http/http.dart' as http;

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


  Future<film_list> filmListFutue;
  Future<film_list> _loadFilmLst() async{
    var response = await http.get("http://api.douban.com/v2/movie/in_theaters?apikey=0df993c66c0c636e29ecbb5344252a4a&start=0&count=10");
    print(response.body);
  }

  @override
  void initState() {
    super.initState();
    filmListFutue = _loadFilmLst();
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

              filmListFutue.then((film_list) =>print('film_list:  ${film_list.toString()}'))
                  .catchError((err)=>print(err));

            },
          ),
        ],
      )
    );
  }
}


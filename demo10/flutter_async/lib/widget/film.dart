import 'package:flutter/material.dart';
import 'package:flutter_async/bean/FilmList.dart';

import 'film_cell.dart';
//import 'package:flutter_speedcode/async_demo/bean/FilmList.dart';


class Film extends StatefulWidget {
  FilmList film;

  Film(this.film);

  @override
  _FilmState createState() => _FilmState();
}

class _FilmState extends State<Film> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Wrap(
          children: <Widget>[
            ...widget.film.subjects.map((f) => FilmCell(f)).toList()
          ],
        ),
      ),
    );
  }
}

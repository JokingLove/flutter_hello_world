import 'package:flutter/material.dart';
import './pages/movie_list_page.dart';


void main() => runApp(MyApp(), );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'http 示例',
      home: MovieListPage(),
    );
  }
}

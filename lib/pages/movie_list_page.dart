import 'package:flutter/material.dart';
import 'dart:convert';
import '../model/movie_list_model.dart';
import '../service/http_service.dart';


class MovieListPage extends StatefulWidget {
  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  
  MovieListModel movieList = MovieListModel([]);
  var scrollController = ScrollController();

  @override
  initState() {
    super.initState();
    getMovie();
  }

  void getMovie() async {
    String url = 'https://movie.douban.com/j/search_subjects?type=movie&tag=%E7%83%AD%E9%97%A8&page_limit=1000&page_start=0';
    await getMethod(url).then((value) {
      var data = json.decode(value.toString());
      // var data = value;
      print('获取到数据：$data');
      
      setState(() {
        movieList = MovieListModel.fromJson(data);
      });
    });
  }

  // 电影列表
  Widget _ListWidget(List<MovieModel> newList, int index) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black12),
        ),
      ),
      child: Row(
        children: <Widget>[
          _movieImage(newList, index),
          SizedBox(
            width: 10,
          ),
          Column(
            children: <Widget>[
              _movieName(newList, index),
              _movieRate(newList, index),
            ],
          ),
        ],
      ),
    );
  }

  Widget _movieImage(List<MovieModel> list, int index) {
    return Container(
      width: 150,
      height: 150,
      child: Image.network(list[index].cover)
    );
  }

  Widget _movieName(List<MovieModel> list, int index) {
    return Container(
      height: 20,
      child: Text(
        '名称：${list[index].title}',
        style: TextStyle(
          fontSize: 16,
          color: Colors.black54,
        ),
      ),
    );
  }

  Widget _movieRate(List<MovieModel> list, int index) {
    return Container(
      // padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.all(5.0),
      height: 20,
      // width: 20,
      child: Text(
        '评分：${list[index].rate}',
        style: TextStyle(fontSize: 16, color: Colors.black54),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if(movieList.data.length > 0) {
      return ListView.builder(
        controller: scrollController,
        itemCount: movieList.data.length,
        itemBuilder: (context, index) {
          return _ListWidget(movieList.data, index);
        },
      );
    }
    return Container();
  }
}

import 'package:flutter/material.dart';
import './pages/movie_list_page.dart';


void main() => runApp(MyApp(), );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icon组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Icon组件示例'),
        ),
        body: Center(
          // child: Icon(Icons.phone, color: Colors.red),
          // child: IconButton(
          //   icon: Icon(Icons.phone_iphone, color: Colors.blue),
          //   tooltip: '点击',
          //   onPressed: () {
          //     print('点击操作！');
          //   },
          // ),
          child: RaisedButton(
            onPressed: () {
              print('hello');
            },
            child: Icon(Icons.phone_iphone, color: Colors.blue),
          )
        ),
      ),
    );
  }
}

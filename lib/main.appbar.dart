import 'package:flutter/material.dart';


void main() => {
    runApp(
      MaterialApp(
        title: 'AppBar示例',
        home: LayoutPage(),
      )
    )
};
  

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('appBar示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            tooltip: '添加',
            onPressed: (){
              print('添加点击');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: '搜索',
            onPressed: (){
              print('搜索点击');
            },
          )
        ]
      ),
    );
  }
}

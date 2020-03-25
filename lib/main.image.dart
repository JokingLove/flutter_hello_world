import 'package:flutter/material.dart';
import './pages/movie_list_page.dart';


void main() => runApp(MyApp(), );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('容器组件示例'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.only(
              top: 0,
            ),
            decoration: BoxDecoration(
              // color: Colors.grey,
              border: Border.all(
                width: 1,
                color: Colors.green,
              ),
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            // child: Text(
            //   'Flutter1',
            //   textAlign: TextAlign.center,
            //   textDirection: TextDirection.rtl,
               
            //   style: TextStyle(
            //     fontSize: 18
            //   ),
            // ),
            child: ClipOval(
              child: Image.network(
                'https://avatars2.githubusercontent.com/u/18134074?s=460&v=4',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

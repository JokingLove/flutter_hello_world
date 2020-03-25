import 'package:flutter/material.dart';
import './pages/movie_list_page.dart';


void main() => runApp(new LongListView(
  list: new List<String>.generate(500, (i) => 'list $i'),
));

// 长列表
class LongListView extends StatelessWidget{
  final List<String> list;

  LongListView({Key key, @required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = '长列表示例';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.phone),
              title: Text('${list[index]}')
            );
          }
        )
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icon组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Icon组件示例'),
        ),
        body: ListView(
          // controller: ScrollController(),
          scrollDirection: Axis.horizontal,
          children: <Widget> [
            // ListTile(
            //   leading: Icon(Icons.ac_unit),
            //   title: Text('ac_unit'),
            // ),
            // ListTile(
            //   leading: Icon(Icons.access_alarm),
            //   title: Text('access_alarm'),
            // ),
            // ListTile(
            //   leading: Icon(Icons.add_alert),
            //   title: Text('add_alert'),
            // ),
            // ListTile(
            //   leading: Icon(Icons.accessible),
            //   title: Text('accessible'),
            // ),
            // ListTile(
            //   leading: Icon(Icons.youtube_searched_for),
            //   title: Text('youtube_searched_for'),
            // ),
            // ListTile(
            //   leading: Icon(Icons.weekend),
            //   title: Text('weekend'),
            // ),
            // ListTile(
            //   leading: Icon(Icons.vpn_lock),
            //   title: Text('vpn_lock'),
            // ),
            Container(
              width: 50,
              color: Colors.blue,
            ),
            Container(
              width: 50,
              color: Colors.pink,
            ),
            Container(
              width: 50,
              color: Colors.yellow,
            ),
            Container(
              width: 50,
              color: Colors.orange,
            ),
            Container(
              width: 50,
              color: Colors.black,
            ),
            Container(
              width: 50,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

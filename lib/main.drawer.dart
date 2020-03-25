import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Draw 抽屉示例',
      home: LayoutDemo(),
    ),
  );
}


class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draw 抽屉示例'),
      ),
      body: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('JOKING'),
              accountEmail: Text('jokinglove@foxmail.com'),
              currentAccountPicture: CircleAvatar(
                // backgroundColor: Colors.white,
                // backgroundImage: AssetImage('images/joking.jpeg'),
                backgroundImage: NetworkImage('https://avatars2.githubusercontent.com/u/18134074?s=60&v=4'),
              ),
              onDetailsPressed: (){
                print('我们是共产主义接班人');
              },
              otherAccountsPictures: <Widget>[
                new Container(
                  // child: Image.asset('images/joking.jpeg')
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.color_lens)),
              title: Text('个性装扮'),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.photo)),
              title: Text('我的相册'),  
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.wifi)),
              title: Text('免流量特权'),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.color_lens)),
              title: Text('个性装扮'),
            ),
          ],
        ),
      ),
    );
  }
}
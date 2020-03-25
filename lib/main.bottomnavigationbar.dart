import 'package:flutter/material.dart';
import 'package:hello_world/main.state.dart';


void main() => {
    runApp(
      MaterialApp(
        title: 'AppBar示例',
        home: MyHomePage(),
      )
    )
};


class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}
  
class _MyHomePageState extends State {

  int _selectedIndex = 0;
  final _widgetOptins = [
    Text('Index 0 : 信息'),
    Text('Index 1 : 通讯录'),
    Text('Index 2 : 发现'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottomNavigationBar示例'),
      ),
      body: Center(
        child: _widgetOptins[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('信息'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text('通讯录'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('发现'),
          ),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

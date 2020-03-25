import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'route',
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/first': (BuildContext context) => FirstPage(),
        '/second': (BuildContext context) => SecondPage(),
      },
      initialRoute: '/first',
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}
  
  
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('route'),
      ),
      body: Center(
        child: Text('主页'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          // color: Colors.blue,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: '增加',
        child: Icon(Icons.add)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('route'),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () => {
            Navigator.pushNamed(context, '/second')
          },
          child: Text('第二页'),
        ),
      ),
      
    );
  }
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('route'),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () => {
            Navigator.pushNamed(context, '/first')
          },
          child: Text('第一页'),
        ),
      ),
    );
  }
}

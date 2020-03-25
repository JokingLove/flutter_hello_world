import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter示例',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '有状态和无状态组件示例'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);
  // 标题
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
   
   int _counter = 0;

   void _incrementCounter() {
     setState(() {
       _counter++;
     });
   }

   @override
   Widget build(BuildContext context) {
     
     return Scaffold(
       appBar: AppBar(
         title: Text(widget.title),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text('你点击右下角按钮的次数：'),
             Text('$_counter', style: Theme.of(context).textTheme.display1),
           ],
         ),
       ),
       floatingActionButton: FloatingActionButton(
         onPressed: _incrementCounter,
         tooltip: '增加',
         child: Icon(Icons.add),
       ),
     );
   }
}

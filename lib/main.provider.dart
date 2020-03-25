import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp(), );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: MaterialApp(
        title: "Provider 示例",
        home: FirstPage(),
      ),
    );
  }
}


// 第一个页面
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个页面"),
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.navigate_next),
            onPressed: () => {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) {
                   return SecondPage();
                })),
            },
          ),
        ],
      ),
      body: Center(
        child: Text("${Provider.of<Counter>(context).count}")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Counter>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


// 第二个页面
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个页面"),
      ),
      body: Center(
        child: Text("${Provider.of<Counter>(context).count}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Counter>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


// 计数器
class Counter with ChangeNotifier {
  // 存储数据
  int _count = 0;

  int get count => _count;

  void increment() {
    _count ++;
    notifyListeners();
  }
}
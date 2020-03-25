import 'package:flutter/material.dart';
import 'package:hello_world/main.state.dart';


void main(){
    runApp(DefaultTabControllerSample());
}

class DefaultTabControllerSample extends StatelessWidget{
  
  final List<Tab> tabs = [
    Tab(text: "tab1"),
    Tab(text: "tab2"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "tab 示例",
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab示例'),
            bottom: TabBar(tabs: tabs),
          ),
          body: TabBarView(
            children: tabs.map((Tab tab) {
                return Center(child: Text(tab.text));
            }).toList(),
          ),
        ),
      ),
    );
  }
}


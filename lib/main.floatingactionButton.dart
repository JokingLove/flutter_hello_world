import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'FloatingActionBottun',
      home: LayoutDemo(),
    ),
  );
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionBottun 示例'),
      ),
      body: Center(
        child: Text(
          'FloatingActionBottun示例',
          style: TextStyle(fontSize: 28.0),
        ),
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context){
          return FloatingActionButton(
            child: const Icon(Icons.add),
            tooltip: '请点击FloatingActionButton',
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            elevation: 7.0,
            highlightElevation: 14.0,
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('你点击了FloatingActionButton'),
                ),
              );
            }
          );
        }
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'SimpleDialog示例',
      home: LayoutDemo(),
    ),
  );
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog 示例'),
      ),
      body: Center(
        child: SimpleDialog(
          title: Text('aha,这是标题'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                print('one');
              },
              child: Text('这是第一行'),
            ),
            SimpleDialogOption(
              onPressed: () {
                print('two');
              },
              child: Text('这是第二行'),
            ),
          ],
        ),
      ),
    );
  }
}

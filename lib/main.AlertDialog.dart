import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'AlertDialog示例',
      home: LayoutDemo(),
    ),
  );
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog 示例'),
      ),
      body: Center(
        child: AlertDialog(
          title: Text('AlertDialog'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('是否要删除'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
                Text('一旦删除数据不可恢复！'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('确定'),
              onPressed: () {
                print('确定点击');
              },
            ),
            FlatButton(
              child: Text('取消'),
              onPressed: () {
                print('取消点击');
              },
            ),
          ],
        ),
      ),
    );
  }
}

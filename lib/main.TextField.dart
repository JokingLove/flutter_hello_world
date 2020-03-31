import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'TextField示例',
      home: LayoutDemo(),
    ),
  );
}


class LayoutDemo extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    controller.addListener((){
      print('你输入的内容为：${controller.text}');
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField 示例'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            controller: controller,
            autofocus: true,
            autocorrect: true,
            maxLength: 30,
            textAlign: TextAlign.center,
            onChanged: (text) {
              print('文本内容改变时回调：$text');
            },
            onSubmitted: (text) {
              print('提交时回调：$text');
            },
            enabled: true,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade200,
              filled: true,
              helperText: '用户名',
              prefixIcon: Icon(Icons.person),
              suffixText: '用户名'
            ),
          ),
        ),
      ),
    );
  }
}

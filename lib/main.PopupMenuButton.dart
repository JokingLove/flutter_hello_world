import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'PopupMenuButton示例',
      home: LayoutDemo(),
    ),
  );
}

enum ConferenceItem {
  AddMembers, LockConference, ModifyLayout, TurnoffAll
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton 示例'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: (){},
          child: PopupMenuButton<ConferenceItem>(
            onSelected: (ConferenceItem result){
              print(result);
              print('hello');
            },
            itemBuilder: (BuildContext context) => 
              <PopupMenuEntry<ConferenceItem>> [
                const PopupMenuItem(
                  value: ConferenceItem.AddMembers,
                  child: Text('添加成员'),
                ),
                const PopupMenuItem(
                  value: ConferenceItem.LockConference,
                  child: Text('锁定会议'),
                ),
                const PopupMenuItem(
                  value: ConferenceItem.ModifyLayout,
                  child: Text('修改布局'),
                ),
                const PopupMenuItem(
                  value: ConferenceItem.TurnoffAll,
                  child: Text('挂断所有'),
                ),
              ],
          ),
        ),
      ),
    );
  }
}

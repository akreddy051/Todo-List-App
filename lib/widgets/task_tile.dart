import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxState;
  final Function longPressCallBack;
  TaskTile({this.isChecked,this.taskTitle,this.checkBoxState,this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(fontSize: 20.0,decoration:isChecked? TextDecoration.lineThrough:null),
      ),
      trailing:  Checkbox(
        activeColor: Colors.lightBlueAccent,
        value:isChecked,
        onChanged:checkBoxState,
      ),
    );
  }
}

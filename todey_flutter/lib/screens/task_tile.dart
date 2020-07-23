import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function onLongPressCallBack;

  TaskTile({this.isChecked,this.taskTitle,this.checkBoxCallBack,this.onLongPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallBack,
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged:checkBoxCallBack
        ));
  }
}



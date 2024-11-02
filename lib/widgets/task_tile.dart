import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final ValueChanged<bool?> checkboxCallback;
  const TaskTile({
    required this.title,
    required this.isChecked,
    required this.checkboxCallback,
    super.key
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text( title,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough:null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
    );
  }
}



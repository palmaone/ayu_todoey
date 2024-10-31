import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text( 'Task 1',
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough:null),
      ),
      trailing: TaskCheckbox(
          checkboxState: isChecked,
          toggleChecboxState: (bool? checkBoxState){
            setState(() {
              isChecked = checkBoxState!;
            });
          }
      ),
    );
  }
}



class TaskCheckbox extends StatelessWidget {

  final bool checkboxState;
  final ValueChanged<bool?> toggleChecboxState;
  const TaskCheckbox(
      {
        required this.checkboxState,
        required this.toggleChecboxState,
        super.key
      }
  );

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleChecboxState,
    );
  }
}


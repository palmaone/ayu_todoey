import 'package:ayu_todoey/widgets/task_tile.dart';
import 'package:flutter/material.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task( name: 'Buy milk' ),
    Task( name: 'Buy eggs' ),
    Task( name: 'Buy bread' ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index){
          return TaskTile(
              isChecked: tasks[index].isDone,
              title: tasks[index].name,
              checkboxCallback: (bool? checkBoxState){
                setState(() {
                  tasks[index].toggleDone();
                });
              }
          );
        },
        itemCount: tasks.length,
    );
  }
}


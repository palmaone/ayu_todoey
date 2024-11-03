import 'package:ayu_todoey/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  const TasksList({
    required this.tasks,
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index){
          return TaskTile(
              isChecked: widget.tasks[index].isDone,
              title: widget.tasks[index].name,
              checkboxCallback: (bool? checkBoxState){
                setState(() {
                  widget.tasks[index].toggleDone();
                });
              }
          );
        },
        itemCount: widget.tasks.length,
    );
  }
}


import 'package:ayu_todoey/screens/add_task_screen.dart';
import 'package:flutter/material.dart';

import '../models/task.dart';
import '../widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  List<Task> tasks = [
    Task( name: 'Buy milk' ),
    Task( name: 'Buy eggs' ),
    Task( name: 'Buy bread' ),
  ];

  @override
  Widget build(BuildContext context) {
    // const String tasksNum = '${tasks.length}  Tasks' ;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(
            Icons.add,
            color: Colors.white,
        ),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen((newTaskTitle){
            setState(() {
              tasks.add(Task(name: newTaskTitle));
            });
            Navigator.pop(context);
          }));
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60.0, right: 30.0, bottom: 30.0, left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                  ),
                ),
                const SizedBox(height: 10.0,),
                const Text(
                    'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,

                  ),
                ),
                Text(
                  '${ tasks.length }  Tasks' ,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(tasks: tasks,),
            ),
          ),
        ],
      ),
    );
  }
}



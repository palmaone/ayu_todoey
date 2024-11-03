import 'package:flutter/material.dart';
    
class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  const AddTaskScreen(this.addTaskCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: const EdgeInsets.only(top: 30.0, left: 40.0, right: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
       children: <Widget> [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent
            ),
          ),
          TextFormField(
            textAlign: TextAlign.center,
            autofocus: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Write your Task',
            ),
            onChanged: (newTitle){
              newTaskTitle = newTitle;
            },
          ),
          const SizedBox(height: 5.0,),
          MaterialButton(
            color: Colors.lightBlueAccent,
            onPressed: (){
              addTaskCallback(newTaskTitle);
            },
            child: const Text(
                'Add',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
    
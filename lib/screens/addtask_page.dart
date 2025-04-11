import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        leading: Icon(Icons.list),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Add Task',
                hintText: 'Attend meeting on 2pm',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Description',
                hintText: 'Meet for new project ',
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todoapp/screens/splash_page.dart';
import 'package:todoapp/screens/tasklist_page.dart';

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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            icon: Icon(Icons.navigate_before),
          ),
        ],
        leading: Icon(Icons.list),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Column(
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

              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  spacing: 18,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Cancel')),

                    ElevatedButton(onPressed: () {}, child: Text('Save')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todoapp/screens/tasklist_page.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.navigate_before),
        ),
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

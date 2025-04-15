import 'package:flutter/material.dart';
import 'package:todoapp/screens/tasklist_page.dart';

class AddTask extends StatefulWidget {
  AddTask({super.key, required this.addNewTask});

  VoidCallback addNewTask;

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            spacing: 12,
            children: [
              TextField(decoration: InputDecoration(labelText: 'Add Task')),

              TextField(decoration: InputDecoration(labelText: 'Description')),
              SizedBox(height: 20),
              Row(
                spacing: 18,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      widget.addNewTask();
                      Navigator.pop(context);
                    },
                    child: Text('Save'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

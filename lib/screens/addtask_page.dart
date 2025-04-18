import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/routing/app_routing.dart';
import 'package:todoapp/utility/utility.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key, required this.addNewTask});

  final Function(String, String) addNewTask;

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final _textTitleControler = TextEditingController();
  final _textDescControler = TextEditingController();

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
              TextField(
                decoration: InputDecoration(labelText: 'Add Task'),
                controller: _textTitleControler,
              ),

              TextField(
                controller: _textDescControler,
                decoration: InputDecoration(labelText: 'Description'),
              ),
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
                      var t = _textTitleControler.text;
                      var desc = _textDescControler.text;
                      if (t.isEmpty && desc.isEmpty) {
                        "Title and Description can't be empty!".showSnack(
                          context,
                        );
                        return;
                      }

                      widget.addNewTask(
                        _textTitleControler.text,
                        _textDescControler.text,
                      );
                      context.pop();
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

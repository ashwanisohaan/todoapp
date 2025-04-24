import 'package:flutter/material.dart';
import 'package:todoapp/models/model_task.dart';

class NameProvider extends ChangeNotifier {
  String name;

  NameProvider() : name = '';

  void changeName({required name}) {
    this.name = name;
    notifyListeners();
  }
}

class TodoProvider extends ChangeNotifier {
  final List<ModelTask> todoList;

  TodoProvider() : todoList = [];

  void addTask({required title, required desc}) {
    todoList.add(ModelTask(title: title, task: desc));
    notifyListeners();
  }

  void removeTask({required ModelTask modelTask}) {
    int delIndex = todoList.indexOf(modelTask);
    todoList.removeAt(delIndex);
    notifyListeners();
  }
}

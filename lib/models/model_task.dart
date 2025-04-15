import 'package:uuid/uuid.dart';

class Task {
  String id;
  String title;
  String task;

  Task({required this.title, required this.task}) : id = Uuid().v4.toString();
}

import 'package:uuid/uuid.dart';

class ModelTask {
  String id;
  String title;
  String task;

  ModelTask({required this.title, required this.task}) : id = Uuid().v4.toString();
}

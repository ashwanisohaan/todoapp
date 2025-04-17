import 'package:todoapp/screens/addtask_page.dart';
import 'package:todoapp/screens/splash.dart';
import 'package:todoapp/screens/tasklist_page.dart';

final appRoutes = {
  '/': (context) => SplashScreen(),
  '/task_listing': (context) => MyList(),
  '/addtask': (context) => AddTask(addNewTask: () {}),
};

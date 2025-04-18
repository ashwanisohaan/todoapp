import 'package:todoapp/screens/addtask_page.dart';
import 'package:todoapp/screens/splash.dart';
import 'package:todoapp/screens/tasklist_page.dart';

class AppRoutes {
  static const screenSplash = '/';
  static const screenTaskListing = '/taskListing';
  static const screenAddTask = '/addTask';

  static var routes = {
    screenSplash: (context) => SplashScreen(),
    screenTaskListing: (context) => MyList(),
    screenAddTask: (context) => AddTask(addNewTask: () {}),
  };
}

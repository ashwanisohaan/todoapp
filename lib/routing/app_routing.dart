import 'package:todoapp/screens/addtask_page.dart';
import 'package:todoapp/screens/splash.dart';
import 'package:todoapp/screens/tasklist_page.dart';

class AppRoutes {
  static const splashScreen = '/';
  static const taskListing = '/taskListing';
  static const addTask = '/addTask';
}

final appRoutes = {
  AppRoutes.splashScreen: (context) => SplashScreen(),
  AppRoutes.taskListing: (context) => MyList(),
  AppRoutes.addTask: (context) => AddTask(addNewTask: () {}),
};

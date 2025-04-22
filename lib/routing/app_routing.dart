import 'package:todoapp/screens/addtask_page.dart';
import 'package:todoapp/screens/counter_page.dart';
import 'package:todoapp/screens/setting.dart';
import 'package:todoapp/screens/splash.dart';
import 'package:todoapp/screens/tasklist_page.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const screenSplash = '/';
  static const screenTaskListing = '/taskListing';
  static const screenAddTask = '/addTask';
  static const screenSetting = '/setting';
  static const screenCounter = '/counter';

  // Without Go router use
  static var routes = {
    screenSplash: (context) => SplashScreen(),
    screenTaskListing: (context) => MyList(uniqueId: ''),
    screenAddTask: (context) => AddTask(addNewTask: (a, b) {}),
    screenSetting: (context) => SettingScreen(),
    screenCounter: (context) => CounterScreen(),
  };
}

// GoRouter configuration
final goRouterConfig = GoRouter(
  initialLocation: AppRoutes.screenSplash,
  routes: [
    GoRoute(
      path: AppRoutes.screenSplash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '${AppRoutes.screenTaskListing}/:uniqueId',
      builder: (context, state) {
        var uId = state.pathParameters['uniqueId']!;

        return MyList(uniqueId: uId);
      },
    ),
    GoRoute(
      path: AppRoutes.screenAddTask,
      builder: (context, state) => AddTask(addNewTask: (a, b) {}),
    ),
    GoRoute(
      path: AppRoutes.screenSetting,
      builder: (context, state) => SettingScreen(),
    ),
    GoRoute(
      path: AppRoutes.screenCounter,
      builder: (context, state) => CounterScreen(),
    ),
  ],
  debugLogDiagnostics: true,
);

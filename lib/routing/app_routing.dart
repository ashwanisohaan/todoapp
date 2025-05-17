import 'package:todoapp/screens/addtask_page.dart';
import 'package:todoapp/screens/bloc_example.dart';
import 'package:todoapp/screens/bloc_with_state.dart';
import 'package:todoapp/screens/counter_page.dart';
import 'package:todoapp/screens/cubit_example.dart';
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
  static const screenBlocExample = '/blocExample';
  static const screenBlocWithStateExample = '/blocWithStateExample';
  static const screenCubitWithStateExample = '/cubitWithStateExample';

  // Without Go router use
  static var routes = {
    screenSplash: (context) => SplashScreen(),
    screenTaskListing: (context) => MyList(uniqueId: ''),
    screenAddTask: (context) => AddTask(addNewTask: (a, b) {}),
    screenSetting: (context) => SettingScreen(),
    screenCounter: (context) => CounterScreen(),
    screenBlocExample: (context) => BlocExample(),
    screenBlocWithStateExample: (context) => BlocWithStateScreen(),
    screenCubitWithStateExample: (context) => CubitWithStateScreen(),
  };
}

// GoRouter configuration
final goRouterConfig = GoRouter(
  initialLocation: AppRoutes.screenCubitWithStateExample,
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
    GoRoute(
      path: AppRoutes.screenBlocExample,
      builder: (context, state) => BlocExample(),
    ),
    GoRoute(
      path: AppRoutes.screenBlocWithStateExample,
      builder: (context, state) => BlocWithStateScreen(),
    ),
    GoRoute(
      path: AppRoutes.screenCubitWithStateExample,
      builder: (context, state) => CubitWithStateScreen(),
    ),
  ],
  debugLogDiagnostics: true,
);

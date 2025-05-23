import 'package:flutter/material.dart';
import 'package:todoapp/routing/app_routing.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouterConfig,
      debugShowCheckedModeBanner: false,
      title: 'ToDoApp',
      //   initialRoute: AppRoutes.screenSplash,
      //   routes: AppRoutes.routes,
    );
  }
}

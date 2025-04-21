import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/provider/name_provider.dart';
import 'package:todoapp/routing/app_routing.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (context) => NameProvider(),
    child: const MyApp(),
  ),
);

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

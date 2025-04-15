import 'package:flutter/material.dart';
import 'package:todoapp/screens/splash.dart';
import 'package:todoapp/screens/tasklist_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDoApp',
      home: SplashScreen(),
    );
  }
}

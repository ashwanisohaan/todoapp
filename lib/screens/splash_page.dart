import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //void initState() {}
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDoApp'),
        backgroundColor: Colors.amber,
        leading: Icon(Icons.notes),
      ),
      body: Center(child: Text("wait a second")),
    );
  }
}

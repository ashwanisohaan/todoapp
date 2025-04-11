import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoapp/screens/tasklist_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => const MyList()));
    });
  }

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

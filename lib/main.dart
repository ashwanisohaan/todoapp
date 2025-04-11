import 'package:flutter/material.dart';
import 'package:todoapp/screens/splash_page.dart';
import 'package:todoapp/screens/tasklist_page.dart';
import 'package:todoapp/screens/addtask_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My ToDoApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ToDoApp'),
//         backgroundColor: Colors.amber,
//         leading: Icon(Icons.notes),
//         actions: [
//           IconButton(
//             onPressed: () {},

//             icon: Icon(Icons.refresh),
//           ),
//         ],
//       ),
//       body: Center(child: Text("wait a second")),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:todoapp/screens/addtask_page.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  void showSnackMsg(String msg) {
    var snack = SnackBar(content: Text(msg));
    ScaffoldMessenger.of(context).showSnackBar(snack);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Record'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => AddTask()));
            },
            icon: Icon(Icons.add),
          ),
        ],
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Record'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        leading: Icon(Icons.list),
        backgroundColor: Colors.yellow,
      ),
      body: Column(children: [ListView()]),
    );
  }
}

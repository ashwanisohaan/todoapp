import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/statemanage/name_provider.dart';
import 'package:todoapp/statemanage/stream_utility.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  final _streamObj = StreamUtility();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream Example"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _streamObj.counterStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text('${snapshot.data}', style: TextStyle(fontSize: 24));
            } else {
              return Text('Waiting for data...');
            }
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _streamObj.incrementCounter();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              _streamObj.decrementCounter();
            },
            child: Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }
}

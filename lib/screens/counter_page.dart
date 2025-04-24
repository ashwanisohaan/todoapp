import 'package:flutter/material.dart';
import 'package:todoapp/statemanage/stream_utility.dart';

class CounterScreen extends StatelessWidget {
  final _streamObj = StreamUtility();
  CounterScreen({super.key}) {
    // var subsc1 = _streamObj.counterStream.listen((data) {
    //   print("First- $data");
    // });

    // var subsc2 = _streamObj.counterStream.listen((data) {
    //   print("second- $data");
    // });

    var subscNumber = _streamObj.getNumbers().listen((data) {
      print("Numbers- $data");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Streams"), backgroundColor: Colors.yellow),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<int>(
              stream: _streamObj.getNumbers(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                    '${snapshot.data}',
                    style: TextStyle(fontSize: 24),
                  );
                } else {
                  return Text('Waiting for data...');
                }
              },
            ),
            SizedBox(
              height: 30,
              child: StreamBuilder<int>(
                stream: _streamObj.counterStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      '${snapshot.data}',
                      style: TextStyle(fontSize: 24),
                    );
                  } else {
                    return Text('Waiting for another stream...');
                  }
                },
              ),
            ),
          ],
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

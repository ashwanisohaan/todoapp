import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/statemanage/bloc_pattern.dart';
import 'package:todoapp/utility/utility.dart';

class BlocWithStateScreen extends StatelessWidget {
  BlocWithStateScreen({super.key}) {
    // var subscNumber = _streamObj.getNumbers().listen((data) {
    //   print("Numbers- $data");
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BLoc With State"),
        backgroundColor: Colors.yellow,
      ),
      body: BlocListener<CounterBlocWithState, CounterState>(
        listener: (context, state) {
          if (state is DecrementState) {
            "Decrement State Listener".showSnack(context);
          } else if (state is IncrementState) {
            "Increment State Listener".showSnack(context);
          } else {
            "Initial State Listener".showSnack(context);
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBlocWithState, CounterState>(
                builder: (ctx, state) {
                  if (state is DecrementState) {
                    return Text(
                      "State is decrement!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  } else if (state is IncrementState) {
                    return Text(
                      "State is increment",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // With extention method
              context.read<CounterBlocWithState>().add(IncrementEvent());
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              // With extention method
              BlocProvider.of<CounterBlocWithState>(
                context,
              ).add(DecrementEvent());
            },
            child: Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }
}

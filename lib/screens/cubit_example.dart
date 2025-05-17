import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/statemanage/cubit_bloc.dart';

class CubitWithStateScreen extends StatelessWidget {
  CubitWithStateScreen({super.key}) {
    // var subscNumber = _streamObj.getNumbers().listen((data) {
    //   print("Numbers- $data");
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cubit With State"),
        backgroundColor: Colors.yellow,
      ),
      body: BlocListener<ResponseCubit, IncomingResponseState>(
        listener: (context, state) {
          // if (state is LoadingState) {
          //   "Loading State Listener".showSnack(context);
          // }
          // else if (state is SuccessState) {
          //   "Success State Listener".showSnack(context);
          // } else {
          //   "Error State Listener".showSnack(context);
          // }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<ResponseCubit, IncomingResponseState>(
                builder: (ctx, state) {
                  if (state is SuccessState) {
                    return Text(
                      state.data,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    );
                  } else if (state is ErrorState) {
                    return Text(
                      state.errorData,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    );
                  } else if (state is LoadingState) {
                    return CircularProgressIndicator();
                  } else {
                    return Text("Perform any Operation!");
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
          ElevatedButton(
            onPressed: () {
              context.read<ResponseCubit>().successResponse();
            },
            child: Text(
              "Hit For Success",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green),
            ),
          ),

          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<ResponseCubit>(context).errorResponse();
            },
            child: Text(
              "Hit For Error",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<ResponseCubit>(context).getReponseFromApi();
            },
            child: Text(
              "Response from Api",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}

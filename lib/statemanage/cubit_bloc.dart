import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class IncomingResponseState {}

class InitialState extends IncomingResponseState {}

class LoadingState extends IncomingResponseState {}

class SuccessState extends IncomingResponseState {
  String data;
  SuccessState({required this.data});
}

class ErrorState extends IncomingResponseState {
  String errorData;
  ErrorState({required this.errorData});
}

class ResponseCubit extends Cubit<IncomingResponseState> {
  ResponseCubit() : super(InitialState());

  void successResponse() async {
    String sData = "";
    emit(LoadingState());
    await Future.delayed(Duration(seconds: 3));
    sData = "Got success Response!";

    emit(SuccessState(data: sData));
  }

  void errorResponse() async {
    String eData = "";
    emit(LoadingState());
    await Future.delayed(Duration(seconds: 3));
    eData = "Ooopppppssss, Got Error!";
    emit(ErrorState(errorData: eData));
  }

  void getReponseFromApi() async {
    emit(LoadingState());
    // await Future.delayed(Duration(seconds: 5));
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos/1'),
    );

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      emit(
        SuccessState(
          data:
              "Title: ${body['title']}\nUserId: ${body['userId']}\nId: ${body['id']}\nCompleted: ${body['completed']}",
        ),
      );
    } else {
      emit(ErrorState(errorData: response.body));
    }
  }
}

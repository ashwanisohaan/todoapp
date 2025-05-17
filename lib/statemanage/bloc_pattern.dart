import 'package:flutter_bloc/flutter_bloc.dart';

// Events
abstract class CounterEvent {}

class DecrementEvent extends CounterEvent {}

class IncrementEvent extends CounterEvent {}

// states
abstract class CounterState {}

class InitialState extends CounterState {}

class DecrementState extends CounterState {}

class IncrementState extends CounterState {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementEvent) {
        emit(_increment());
      } else if (event is DecrementEvent) {
        emit(_decrement());
      }
    });
  }
  int counter = 0;
  int _increment() => counter++;
  int _decrement() => counter--;
}

class CounterBlocWithState extends Bloc<CounterEvent, CounterState> {
  CounterBlocWithState() : super(InitialState()) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementEvent) {
        emit(IncrementState());
      } else if (event is DecrementEvent) {
        emit(DecrementState());
      }
    });
  }
}

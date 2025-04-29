import 'package:flutter_bloc/flutter_bloc.dart';

// Events
abstract class CounterEvent {}

class DecrementEvent extends CounterEvent {}

class IncrementEvent extends CounterEvent {}

// states
abstract class CounterState {}

class DecrementState extends CounterState {}

class IncrementState extends CounterState {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementEvent>((event, emit) {
      emit(state + 1);
    });
    on<DecrementEvent>((event, emit) {
      emit(state - 1);
    });
  }

  // @override
  // Stream<int> mapEventToState(CounterEvent event) async* {
  //   if (event is IncrementEvent) {
  //     yield state + 1;
  //   }
  //   if (event is DecrementEvent) {
  //     yield state - 1;
  //   }

  // }
}

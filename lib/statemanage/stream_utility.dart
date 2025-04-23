import 'dart:async';

class StreamUtility {
  final StreamController<int> _counterControler =
      StreamController<int>.broadcast();
  Stream<int> get counterStream => _counterControler.stream;

  int _count = 0;
  void incrementCounter() {
    _count++;
    _counterControler.sink.add(_count);
  }

  void decrementCounter() {
    if (_count != 0) {
      _count--;
      _counterControler.sink.add(_count);
    }
  }

  Stream<int> getNumbers() async* {
    for (int i = 1; i < 20; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }
}

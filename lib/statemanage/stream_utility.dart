import 'dart:async';

import 'package:flutter/material.dart';

class StreamUtility {
  final StreamController<int> _counterControler = StreamController<int>();
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
}

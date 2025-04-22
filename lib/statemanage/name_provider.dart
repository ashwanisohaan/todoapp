import 'package:flutter/material.dart';

class NameProvider extends ChangeNotifier {
  String name;

  NameProvider() : name = '';

  void changeName({required name}) {
    this.name = name;
    notifyListeners();
  }
}

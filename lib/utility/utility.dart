import 'package:flutter/material.dart';

extension Displays on String {
  void showSnack(BuildContext context) {
    var snack = SnackBar(content: Text(this));
    ScaffoldMessenger.of(context).showSnackBar(snack);
  }
}

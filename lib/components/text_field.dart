import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  String ltxt='';
   String htxt='';

  AppTextField({this.ltxt,this.htxt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Add Task',
          hintText: 'Attend meeting on 2pm',
        ),
      ),
    );
  }
}

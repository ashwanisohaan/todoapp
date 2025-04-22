import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/routing/app_routing.dart';
import 'package:todoapp/statemanage/name_provider.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});

  final _edtControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Example"),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          TextField(
            controller: _edtControler,
            decoration: InputDecoration(labelText: 'Enter Name'),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            child: Text("Change"),
            onPressed: () {
              if (_edtControler.text.isNotEmpty) {
                context.read<NameProvider>().changeName(
                  name: _edtControler.text.trim(),
                );
              }
              context.pop();
              // Navigator.pop(context);
            },
          ),
          SizedBox(height: 50),
          ElevatedButton(
            child: Text("Check Stream Example"),
            onPressed: () {
              context.pushReplacement(AppRoutes.screenCounter);
              // Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

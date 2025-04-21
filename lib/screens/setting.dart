import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/provider/name_provider.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});

  final _edtControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Example"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          TextField(
            controller: _edtControler,
            decoration: InputDecoration(labelText: 'Enter Name'),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              if (_edtControler.text.isNotEmpty) {
                context.read<NameProvider>().changeName(
                  name: _edtControler.text,
                );
              }
              // context.pop();
              Navigator.pop(context);
            },
            child: Text("Change"),
          ),
        ],
      ),
    );
  }
}

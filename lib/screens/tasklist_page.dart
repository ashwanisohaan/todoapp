import 'package:flutter/material.dart';
import 'package:todoapp/models/model_task.dart';
import 'package:todoapp/screens/addtask_page.dart';
import 'package:todoapp/utility/utility.dart';

class MyList extends StatefulWidget {
  const MyList({required this.uniqueId, super.key});

  final String uniqueId;

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  final initialList = [
    ModelTask(
      title: "First Task",
      task: "Please go and bring come vegetable from the market",
    ),
    // ModelTask(title: "Second Task", task: "Please get the bike repaired"),
  ];

  void _deleteItem(ModelTask task) {
    setState(() {
      int delIndex = initialList.indexOf(task);
      initialList.removeAt(delIndex);
    });
    task.title.showSnack(context);
  }

  void addNewTask(String title, String desc) {
    setState(() {
      initialList.add(ModelTask(title: title, task: desc));
    });
  }

  void _showBottmSheet() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) => AddTask(addNewTask: addNewTask),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome ${widget.uniqueId}'),
        actions: <Widget>[
          IconButton(onPressed: _showBottmSheet, icon: Icon(Icons.add)),
        ],
        backgroundColor: Colors.yellow,
      ),
      body:
          initialList.isEmpty
              ? _emptyWidget()
              : ListView.builder(
                itemCount: initialList.length,
                itemBuilder: (ctx, index) {
                  return _CardItem(initialList[index], context);
                },
              ),
    );
  }

  Widget _CardItem(ModelTask mTask, BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            title: Text(mTask.title),
            subtitle: Text(mTask.task),
            trailing: IconButton(
              onPressed: () {
                _deleteItem(mTask);
              },
              icon: Icon(Icons.delete),
            ),
          ),
        ],
      ),
    );
  }

  Widget _emptyWidget() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo_splash.jpg", height: 50, width: 50),
          Text(
            "No data found",
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}

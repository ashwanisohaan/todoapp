import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/model_task.dart';
import 'package:todoapp/statemanage/app_provider.dart';
import 'package:todoapp/screens/addtask_page.dart';
import 'package:todoapp/utility/utility.dart';

class MyList extends StatefulWidget {
  const MyList({required this.uniqueId, super.key});

  final String uniqueId;

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  // final initialList = [
  //   ModelTask(
  //     title: "First Task",
  //     task: "Please go and bring come vegetable from the market",
  //   ),
  //   // ModelTask(title: "Second Task", task: "Please get the bike repaired"),
  // ];

  void _deleteItem(ModelTask task) {
    // setState(() {
    //   int delIndex = initialList.indexOf(task);
    //   initialList.removeAt(delIndex);
    // });

    context.read<TodoProvider>().removeTask(modelTask: task);

    task.title.showSnack(context);
  }

  void addNewTask(String title, String desc) {
    // setState(() {
    //   initialList.add(ModelTask(title: title, task: desc));
    // });
    context.read<TodoProvider>().addTask(title: title, desc: desc);
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
    var pTotoList = context.watch<TodoProvider>().todoList;

    return Scaffold(
      appBar: AppBar(
        // title: Text('Welcome ${widget.uniqueId}'),
        title: Text('Welcome ${context.watch<NameProvider>().name}'),
        actions: <Widget>[
          IconButton(onPressed: _showBottmSheet, icon: Icon(Icons.add)),
          // IconButton(
          //   onPressed: () {
          //     context.push(AppRoutes.screenSetting);
          //   },
          //   icon: Icon(Icons.add),
          // ),
        ],
        backgroundColor: Colors.yellow,
      ),
      body:
          pTotoList.isEmpty
              ? _emptyWidget()
              : ListView.builder(
                itemCount: pTotoList.length,
                itemBuilder: (ctx, index) {
                  return _cardItem(pTotoList[index], context);
                },
              ),
    );
  }

  Widget _cardItem(ModelTask mTask, BuildContext context) {
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

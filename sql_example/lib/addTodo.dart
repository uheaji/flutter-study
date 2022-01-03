import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'todo.dart';

class AddToDoApp extends StatefulWidget {
  final Future<Database> db;
  AddToDoApp(this.db);

  @override
  _AddToDoAppState createState() => _AddToDoAppState();
}

class _AddToDoAppState extends State<AddToDoApp> {
  TextEditingController? titleController;
  TextEditingController? contentController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    titleController = new TextEditingController();
    contentController = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo 추가'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: '제목'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: contentController,
                  decoration: InputDecoration(labelText: '할일'),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Todo todo = Todo(
                        title: titleController!.value.text,
                        content: contentController!.value.text,
                        active: 0);
                    Navigator.of(context).pop(todo);
                  },
                  child: Text('저장하기'))
            ],
          ),
        ),
      ),
    );
  }
}

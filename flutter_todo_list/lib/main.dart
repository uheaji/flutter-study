import 'package:flutter/material.dart';
import 'package:flutter_todo_list/secondDetail.dart';
import 'package:flutter_todo_list/subDetail.dart';
import 'package:flutter_todo_list/thirdPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 static const String _title = 'Widget Example';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      initialRoute: '/',
      routes: {'/': (context) => SubDetail(),
              '/second': (context) => SecondDetail(),
              '/third': (context) => ThirdDetail()}
    );
  }
}


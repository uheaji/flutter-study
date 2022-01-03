import 'package:banking_app_ui/screens/base_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Banking App UI',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Poppins",
        appBarTheme: AppBarTheme(backgroundColor: Colors.white, elevation: 0),
        primarySwatch: Colors.blue,
      ),
      home: BaseScreen(),
    );
  }
}

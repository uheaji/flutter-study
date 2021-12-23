import 'package:clone_coding_e_commerce_app/constants.dart';
import 'package:clone_coding_e_commerce_app/routs.dart';
import 'package:clone_coding_e_commerce_app/screens/splash/splash_screen.dart';
import 'package:clone_coding_e_commerce_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

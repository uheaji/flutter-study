import 'package:flutter/material.dart';
import 'package:flutter_getx_study/src/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // GetX 주요기능
  // 1. 상태관리
  // 2. 라우트 관리
  // 3. 종속성 관리
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

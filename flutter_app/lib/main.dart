import 'package:flutter/material.dart';

void main() { 
  // main스레드는 runApp을 실행시키고 종료된다.
  runApp(FirstApp()); // 비동기로 실행됨(이벤트 루프에 등록된다.)
}

class FirstApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Image.asset(
              "dinotaeng.jpg",
              width: 200,
              // height: 500,
              // fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
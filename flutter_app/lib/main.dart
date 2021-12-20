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
          body: HomeApp(),
        ),
      ),
    );
  }
}


class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var m = MediaQuery.of(context);
    print("넓이: ${m.size.width}");
    print("높이: ${m.size.height}");
    print("Safearea: ${m.padding.top}");
    return Column( 
      children: [
        Container( // 파랑색도 Expanded로 감싸면 1:1이 됨
          height: m.size.height * 0.7, // 디바이스마다 비율이 다르기 때문에 이렇게 주면 안됨!!
          color: Colors.blue,
        ),
        Container( // 남은 공간에 빨간색을 채우고 싶으면, Expanded 위젯으로 감싸면 됨
          height: m.size.height * 0.3,
          color: Colors.red,
        ),
      ],
    );
  }
}
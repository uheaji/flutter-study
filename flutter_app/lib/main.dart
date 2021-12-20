import 'package:flutter/material.dart';

void main() { 
  // main스레드는 runApp을 실행시키고 종료된다.
  runApp(FirstApp()); // 비동기로 실행됨(이벤트 루프에 등록된다.)
}

class FirstApp extends StatelessWidget {

  final colorCodes = [600, 500, 400, 300, 200];
  final data = ["가", "나", "다", "라", "마"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView.separated(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index){
              return newMethod(index); // 메소드로 추출
            },
            separatorBuilder: (context, index) => Divider(), // 리스트 구분선이 생긴다! (기본)
          ),
        ),
      ),
    );
  }


  Widget newMethod(int index) {
    return ListTile( // 특별한 디자인을 만들고 싶으면 row, column으로 새로 만들어야한다.
      title: Text("제목"),
      subtitle: Text("부제목"),
      leading: Icon(Icons.person),
      onTap: () {
        print("눌러짐");
      },
    );
  }
}



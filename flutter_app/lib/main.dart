import 'package:flutter/material.dart';

void main() { 
  // main스레드는 runApp을 실행시키고 종료된다.
  runApp(FirstApp()); // 비동기로 실행됨(이벤트 루프에 등록된다.)
}

// 저장만 하면 화면이 리로드 됨. 핫 리로드
class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // AndroidApp
      home: SafeArea(
        child: Scaffold( // 기본구조를 들고 있음.
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Fisrt App'),
          leading: Icon(Icons.menu),
        ),
          body: Text("Hello World"),
          floatingActionButton: FloatingActionButton(
            child: Text('button'),
            onPressed: () {
              print('버튼 클릭됨');
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                label: 'hello',
                icon: Icon(Icons.access_alarm)
              ),
              BottomNavigationBarItem(
                label: 'hello',
                icon: Icon(Icons.access_alarm)
              )
            ],
            backgroundColor: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
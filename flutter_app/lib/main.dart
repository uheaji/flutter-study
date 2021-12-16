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
          body: Column( // 크기가 없음 !
          mainAxisAlignment: MainAxisAlignment.spaceAround, // 수직방향
          crossAxisAlignment: CrossAxisAlignment.stretch, // 수평방향

            children: [
                Container( // 컨테이너는 가질 수 있는 최대크기만큼 차지. -> 부모의 최대 크기까지 늘려라
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container( // 컨테이너는 가질 수 있는 최대크기만큼 차지.
                  color: Colors.orange,
                  width: 100,
                  height: 100,
                ),
                Container( // 컨테이너는 가질 수 있는 최대크기만큼 차지.
                  color: Colors.yellow,
                  // width: 100,
                  height: 100,
                ),
            ],
          ),
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
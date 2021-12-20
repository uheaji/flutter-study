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
          body: Column(
            children: [
              RaisedButton(onPressed: (){ // 기본버튼
                print("RaisedButton 클릭됨!");
              },
              child: Text("RaisedButton"),
              // elevation: 10, // 그림자 효과를 줌
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.all(30.0),
              // shape: ,
              ),
              FlatButton( // 커스텀버튼
                onPressed: () {
                  print("FlatButton 클릭됨!");
                }, 
                color: Colors.grey,
                child: Text("FlatButton"),
              ),
              InkWell(
                onTap: () {
                  print("커스텀버튼 클릭됨!");
                },
                child: Container(
                  color: Colors.amber,
                  child: Text("커스텀 버튼"),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
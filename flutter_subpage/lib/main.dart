import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SubPage Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}


class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page Main'),
      ),
      body: Container(
        child: Center(
          child: Text('첫번째 페이지'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Navigatio는 스택을 이용해 페이지를 관리할 때 사용하는 클래스
          // of(context)함수는 현재페이지를 나타냄
          // push()함수는 스택에 페이지를 쌓음
          // MaterialPageRoute()함수는 머터리얼스타일로 페이지가 이동하게 해준다
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage(),));
        },
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // 지금페이지를 스택메모리에서 제거
            },
            child: Text('돌아가기'),
          ),
        ),
      ),
    );
  }
}
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget { // statefulWidget은 10단계의 생명주기가 있다.
 
  @override
  State<StatefulWidget> createState() { // (1) 상태를 생성하는 createState(), statefulWidget은 변경감지, State클래스는 실제 갱신을 담당
    print('createState');
    return _MyApp();
  } 
}


class _MyApp extends State<MyApp> {
  var switchValue = false;
  String test = 'hello';
  Color _color = Colors.blue;

  // This widget is the root of your application.
  // (2) 위젯을 화면에 장착하면 mounted == true => widget을 제어할 수 있는 buildContext클레스에 접근할 수 있음
  // (3) 위젯을 초기화하는 initState() => 한번만 호출한다. 주로 데이터 목록을 만들거나 처음 필요한 데이터를 주고받을 때 호출함
  // (4) 의존성이 변경되면 호출하는 didChangeDependencies()
  // (5) 화면에 표시하는 build() 함수 => 위젯을 화면에 렌더링함 
  // (6) 위젯을 갱신하는 didUpdateWidget() 함수
  @override
  Widget build(BuildContext context) { 
    print('build');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.light(),
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text('$test'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_color),
            ),
            onPressed: () {
              if(_color == Colors.blue) {
                setState(() { // (7) 위젯의 상태를 갱신하는 setState() 함수
                  test = 'flutter';
                  _color = Colors.amber;
                });
              } else {
                setState(() {
                  test = 'hello';
                  _color = Colors.blue;
                });
              }
            },
          ),
        ),
      )
    );
  }

  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

}


// (8) 위젯의 상태 관리를 중지하는 deactivate() 함수 => dispose() 함수를 호출하기 전까지는 State 객체를 재사용할 수 있음
// (9) 위젯의 상태관리를 완전히 끝내는 dispose() 함수
// (10) 위젯을 화면에서 제거하면 mounted == false

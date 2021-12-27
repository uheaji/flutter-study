import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  State<MyCustomForm> createState() => _MyCustomForm();
}

class _MyCustomForm extends State<MyCustomForm> {
  // TextField의 현잿값을 얻는 데 필요
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // addListener로 상태를 모니터링할 수 있음.
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // 화면이 종료될 때는 반드시 위젯 트리에서 컨트롤러를 해제해야 함.
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    // 컨트롤러의 text 프로퍼티로 연결된 TextField에 입력된 값을 얻음.
    print('두번째 textfield: ${myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input 연습'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                print("첫번째 text filed: $text");
              },
            ),
            TextField(
              controller: myController, // 컨트롤러를 지정
            )
          ],
        ),
      ),
    );
  }
}

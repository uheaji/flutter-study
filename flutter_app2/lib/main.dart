import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '폼 검증 데모',
      home: Scaffold(
        appBar: AppBar(
          title: Text('폼 검증 데모'),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  State<MyCustomForm> createState() => _MyCustomForm();
}

class _MyCustomForm extends State<MyCustomForm> {
  // Form 위젯에 유니크한 키값을 부여하고 검증시 사용
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Form 위젯에 _formKey를 지정
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TextFormField위젯은 TextField 위젯이 제공하는 기능에 추가로 validator 프로퍼티를 활용한 검증 기능도 제공한다.
          TextFormField(
            // validator에는 입력된 값(valuie)를 인수로 받는 함수를 작성합니다.
            validator: (value) {
              if (value!.isEmpty) {
                return '글자를 입력하세요.';
              }
              return null;
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // 폼을 검증하여 통과하면 true, 실패하면 false 리턴
                if (_formKey.currentState!.validate()) {
                  // 검증이 통과하면 스낵바 표시
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('검증 완료')));
                }
              },
              child: Text('검증'),
            ),
          )
        ],
      ),
    );
  }
}

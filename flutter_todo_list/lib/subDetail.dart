import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';


class SubDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SubDetail();
}

class _SubDetail extends State<SubDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Detail Example'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              // pushReplacementNamed() 함수는 스택 메모리에 있는 자료를 교체한다. 스택메모리에 자료를 추가하지 않음 !
              // Navigator.of(context).pushReplacementNamed('/second');
              Navigator.of(context).pushNamed('/second');
            },
            child: Text('두 번째 페이지로 이동하기'),
          ),
        ),
      ),
    );
  }
}
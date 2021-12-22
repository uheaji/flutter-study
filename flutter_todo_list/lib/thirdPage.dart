import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';


class ThirdDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 두번째 페이지에서 보낸 argument의 값을 저장
    final String args = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('상세정보'),
      ),
      body: Container(
        child: Center(
          child: Text(
            args,
            style: TextStyle(fontSize: 30),
          )
        ),
      ),
    );
  }
}
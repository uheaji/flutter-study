import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';


class SecondDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecondDetail();
}

class _SecondDetail extends State<SecondDetail> {
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
              // Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed('/third');
            },
            child: Text('세 번째 페이지로 돌아가기'),
          ),
        ),
      ),
    );
  }
}
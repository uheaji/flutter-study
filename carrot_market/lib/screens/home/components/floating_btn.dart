import 'package:carrot_market/constants.dart';
import 'package:flutter/material.dart';

class FloatingBtn extends StatelessWidget {
  const FloatingBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        print("플로팅 버튼 클릭됨 !");
      },
      backgroundColor: kPrimaryColor,
      child: Icon(
        Icons.add,
        size: 30,
      ),
    );
  }
}

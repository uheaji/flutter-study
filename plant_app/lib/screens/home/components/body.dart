import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 현재 기기의 화면크기, MediaQuery.of는 MediaQuery가 변할 때마다 위젯이 rebuild 됨.
    Size size = MediaQuery.of(context).size;
    // SingleChildScrollView은 자식들을 모두 렌더링 함 <-> ListView는 현재 화면에 보이는 위젯들만 렌더링 함.
    return SingleChildScrollView(
      child: Column(
        children: [
          // 헤더를 위젯으로 추출
          HeaderWithSearchBox(size: size),
        ],
      ),
    );
  }
}

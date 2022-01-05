import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plant.dart';
import 'package:plant_app/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app/screens/home/components/recommends_plant.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 현재 기기의 화면크기, MediaQuery.of는 MediaQuery가 변할 때마다 위젯이 rebuild 됨.
    Size size = MediaQuery.of(context).size;
    // SingleChildScrollView은 자식들을 모두 렌더링 함 <-> ListView는 현재 화면에 보이는 위젯들만 렌더링 함.
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          // 헤더를 위젯으로 추출
          HeaderWithSearchBox(size: size),
          // 타이틀 + 버튼 위젯으로 추출
          TitleWithMoreBtn(title: "Recommended"),
          // Recommended 카드 위젯으로 추출
          RecommendsPlant(),
          TitleWithMoreBtn(title: "Featured Plants"),
          // Featured 카드 위젯으로 추출
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

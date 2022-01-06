import 'package:coffee_app/screens/home/components/custome_title.dart';
import 'package:coffee_app/screens/home/components/popular_card.dart';
import 'package:coffee_app/screens/home/components/search_box.dart';
import 'package:coffee_app/screens/home/components/trend_card_list.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 17),
          searchBox(),
          CustomTitle(text: "Trending now"),
          TrendCardList(),
          SizedBox(height: 37),
          CustomTitle(text: "Popular Products"),
          PopularCard()
        ],
      ),
    );
  }
}

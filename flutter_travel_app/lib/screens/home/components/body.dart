import 'package:flutter/material.dart';
import 'package:flutter_travel_app/screens/home/components/home_header.dart';
import 'package:flutter_travel_app/screens/home/components/popular_places.dart';
import 'package:flutter_travel_app/screens/home/components/top_travelers.dart';
import 'package:flutter_travel_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(),
          PopularPlaces(),
          TopTravelers(),
          VerticalSpacing()
        ],
      ),
    );
  }
}

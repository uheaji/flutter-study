import 'package:flutter/material.dart';
import 'package:flutter_travel_app/components/place_card.dart';
import 'package:flutter_travel_app/constants.dart';
import 'package:flutter_travel_app/models/TravelSpot.dart';
import 'package:flutter_travel_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultPadding)),
      child: Wrap(
        children: [
          PlaceCard(
            travelSpot: travelSpots[0],
            press: () {},
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_travel_app/components/place_card.dart';
import 'package:flutter_travel_app/components/section_title.dart';
import 'package:flutter_travel_app/models/TravelSpot.dart';
import 'package:flutter_travel_app/size_config.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Right Now At Spark',
          press: () {},
        ),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                travelSpots.length,
                (index) => Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(20)),
                  child: PlaceCard(
                    travelSpot: travelSpots[index],
                    press: () {},
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
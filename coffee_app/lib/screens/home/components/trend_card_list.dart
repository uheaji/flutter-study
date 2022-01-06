import 'package:coffee_app/screens/home/components/trend_card.dart';
import 'package:flutter/material.dart';

class TrendCardList extends StatelessWidget {
  const TrendCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TrendCard(
              image: "images/espresso.png",
              name: "Cortado",
              feature: "Our signature Espresso and textured milk",
              price: "10.00",
            ),
            TrendCard(
              image: "images/hot_coffe.png",
              name: "Caramel Cortado",
              feature: "Cortado's decadent cousin.",
              price: "14.00",
            )
          ],
        ),
      ),
    );
  }
}

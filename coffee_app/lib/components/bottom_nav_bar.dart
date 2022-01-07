import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              FaIcon(
                FontAwesomeIcons.home,
                color: kPrimaryColor,
              ),
              Text(
                'HOME',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
          Column(
            children: [
              FaIcon(
                FontAwesomeIcons.solidHeart,
                color: Colors.grey,
              ),
              Text(
                'SAVED',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Column(
            children: [
              FaIcon(
                FontAwesomeIcons.shoppingBag,
                color: Colors.grey,
              ),
              Text(
                'CART',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Column(
            children: [
              FaIcon(
                FontAwesomeIcons.userAlt,
                color: Colors.grey,
              ),
              Text(
                'PROFILE',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar(GlobalKey<ScaffoldState> homeScaffoldKey) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.location_pin,
          color: kPrimaryColor,
          size: 17,
        ),
        SizedBox(width: 3),
        Text(
          '100ft Road, Kannur',
          style: TextStyle(
            color: kTextColor,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    leading: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: IconButton(
        onPressed: () {
          homeScaffoldKey.currentState?.openDrawer();
        },
        icon: Icon(
          Icons.menu,
          color: Colors.black,
          // size: 30,
        ),
      ),
    ),
    actions: [
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 20),
        // padding: EdgeInsets.symmetric(horizontal: 2.5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.inbox,
            color: Colors.black,
            // size: 30,
          ),
        ),
      )
    ],
  );
}

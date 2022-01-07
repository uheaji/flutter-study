import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar homeAppBar() {
  return AppBar(
    title: GestureDetector(
      onTap: () {
        print("click!");
      },
      child: Row(
        children: [
          Text(
            '가야동',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
        ],
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
        color: Colors.black,
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.tune),
        color: Colors.black,
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'icons/bell-regular.svg',
          width: 19,
        ),
      )
    ],
    backgroundColor: Colors.white,
    elevation: 1,
  );
}

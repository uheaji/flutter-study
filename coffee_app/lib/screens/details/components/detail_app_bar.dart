import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar detailAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20, top: 20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.1),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: FaIcon(FontAwesomeIcons.arrowLeft),
      ),
    ),
    actions: [
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 20, top: 20),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.1),
        ),
        child: IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.ellipsisH,
            // size: 30,
          ),
        ),
      ),
    ],
  );
}

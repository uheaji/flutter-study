import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class searchBox extends StatelessWidget {
  const searchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
      padding: EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.search,
            size: 19,
            color: Colors.black.withOpacity(0.7),
          ),
          Expanded(
            child: Container(
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Search for coffee, snacks...",
                  // hintStyle: TextStyle(
                  //   color: Colors.black.withOpacity(0.5),
                  //   fontSize: 14,
                  // ),
                  hintStyle: GoogleFonts.manrope(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 14,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          FaIcon(
            FontAwesomeIcons.slidersH,
            size: 19,
            color: kPrimaryColor.withOpacity(0.85),
          ),
        ],
      ),
    );
  }
}

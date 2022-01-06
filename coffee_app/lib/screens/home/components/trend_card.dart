import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendCard extends StatelessWidget {
  final String image;
  final String name;
  final String feature;
  final String price;

  const TrendCard(
      {Key? key,
      required this.image,
      required this.name,
      required this.feature,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // margin: EdgeInsets.,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 7),
              blurRadius: 10,
              color: Colors.black.withOpacity(0.1),
            )
          ]),
      width: size.width * 0.435,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: kSubBgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(image),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.abrilFatface(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    feature,
                    style: GoogleFonts.manrope(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$$price",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 4, 5, 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kPrimaryColor,
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.shoppingBag,
                        size: 18,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

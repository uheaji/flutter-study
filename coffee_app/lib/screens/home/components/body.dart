import 'package:coffee_app/constants.dart';
import 'package:coffee_app/screens/home/components/custome_title.dart';
import 'package:coffee_app/screens/home/components/search_box.dart';
import 'package:coffee_app/screens/home/components/trend_card_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 17),
          searchBox(),
          CustomTitle(text: "Trending now"),
          TrendCardList(),
          SizedBox(height: 37),
          CustomTitle(text: "Popular Products"),
          Container(
            width: double.infinity,
            height: size.height * 0.16,
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 7),
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.1),
                )
              ],
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(12),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kSubBgColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset("images/nut_latte.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mocha",
                        style: GoogleFonts.abrilFatface(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          "Expertly steamed chocolate milk\n blended with espresso for a...",
                          style: GoogleFonts.manrope(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$10.00",
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
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

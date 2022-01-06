import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_shadow/simple_shadow.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.35),
                height: size.height * 0.65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 70,
                child: Column(
                  children: [
                    SimpleShadow(
                      child: Image.asset('images/cold.png'),
                      opacity: 0.6, // Default: 0.5
                      color: Colors.black, // Default: Black
                      offset: Offset(0, 10), // Default: Offset(2, 2)
                      sigma: 15,
                      // Default: 2
                    ),
                    SizedBox(height: 20),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Frostino\n",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: kPrimaryColor,
                          ),
                        ),
                        TextSpan(
                          text: "Belgian Chocolate\n & Cream Frostino",
                          style: GoogleFonts.abrilFatface(
                            // fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: kTextColor,
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(height: 55),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Rich and creamy blende drin made with Begian\n chocolate sauce, topped with cream and a sprinkling of chocolate powde. Can be made with or without coffee",
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 55),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "\$10.00",
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: kPrimaryColor,
                            ),
                          ),
                          TextSpan(text: ' '),
                          TextSpan(
                            text: " Inc. all taxes",
                            style: GoogleFonts.manrope(
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 75,
                        width: double.infinity,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 30, right: 30),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Text(
                          "Add to cart",
                          style: GoogleFonts.manrope(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

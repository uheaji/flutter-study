import 'package:clone_coding_e_commerce_app/components/default_button.dart';
import 'package:clone_coding_e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          "assets/images/success.png",
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Text(
          "Login Success",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(25),
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        SizedBox(
          width: SizeConfig.screenWidth * 0.5,
          child: DefaultButton(
            text: "Back to home",
            press: () {},
          ),
        ),
        Spacer()
      ],
    );
  }
}

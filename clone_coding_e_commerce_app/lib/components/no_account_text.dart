import 'package:clone_coding_e_commerce_app/constants.dart';
import 'package:clone_coding_e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:clone_coding_e_commerce_app/screens/sign_up/sign_up_screen.dart';
import 'package:clone_coding_e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: getProportionateScreenWidth(14)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}

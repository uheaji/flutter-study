import 'package:coffee_app/constants.dart';
import 'package:coffee_app/screens/details/components/body.dart';
import 'package:coffee_app/screens/details/components/detail_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kPrimaryColor,
      appBar: detailAppBar(context),
      body: Body(),
    );
  }
}

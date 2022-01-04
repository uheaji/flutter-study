import 'package:flutter/material.dart';
import 'package:flutter_travel_app/components/app_bar.dart';
import 'package:flutter_travel_app/components/custom_nav_bar.dart';
import 'package:flutter_travel_app/constants.dart';
import 'package:flutter_travel_app/screens/home/components/body.dart';
import 'package:flutter_travel_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(isTransparent: true, title: ''),
      body: Body(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

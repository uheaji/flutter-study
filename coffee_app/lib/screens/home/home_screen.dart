import 'package:coffee_app/components/bottom_nav_bar.dart';
import 'package:coffee_app/screens/home/components/body.dart';
import 'package:coffee_app/screens/home/components/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

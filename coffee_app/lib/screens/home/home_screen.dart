import 'package:coffee_app/components/bottom_nav_bar.dart';
import 'package:coffee_app/constants.dart';
import 'package:coffee_app/screens/home/components/body.dart';
import 'package:coffee_app/screens/home/components/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // drawer를 만들기 위헤 global key 선언
  final GlobalKey<ScaffoldState> _homeScaffoldKey =
      new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homeScaffoldKey,
      appBar: homeAppBar(_homeScaffoldKey),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
      drawer: Drawer(
        backgroundColor: kPrimaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text(
                'Messages',
                style: TextStyle(),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

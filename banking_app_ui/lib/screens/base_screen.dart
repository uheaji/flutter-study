import 'package:banking_app_ui/constants/color_constants.dart';
import 'package:banking_app_ui/screens/home_screen.dart';
import 'package:banking_app_ui/screens/card_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CardScreen(),
    HomeScreen(),
    CardScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.creditCard), label: "Cards"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.cog), label: "Settings"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.chartBar), label: "Overview"),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class tutor_root_page extends StatefulWidget {
  const tutor_root_page({Key? key}) : super(key: key);

  @override
  State<tutor_root_page> createState() => _tutor_root_pageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _tutor_root_pageState extends State<tutor_root_page> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(

        icons: [
          Icons.home,
          Icons.payment_rounded,
          Icons.bookmark_border,
          Icons.chat,
          Icons.person,
        ],
        activeIndex: _selectedIndex,
        leftCornerRadius: 32,
        rightCornerRadius: 0,
        onTap: (index) => setState(() => _selectedIndex = index),
        //other params
      ),

    );
  }
}

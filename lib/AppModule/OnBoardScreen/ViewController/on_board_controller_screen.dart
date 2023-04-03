import 'package:flutter/material.dart';
import 'package:megamind/AppModule/OnBoardScreen/ViewController/on_board_screen1.dart';

import 'on_board_screen2.dart';
import 'on_board_screen3.dart';

class OnboardControllerScreen extends StatefulWidget {
   OnboardControllerScreen({Key? key,}): super(key: key);

  @override
  _OnboardControllerScreenState createState() => _OnboardControllerScreenState();
}

class _OnboardControllerScreenState extends State<OnboardControllerScreen> {
final controller =PageController(initialPage:0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView(
        allowImplicitScrolling: false,
   physics:  NeverScrollableScrollPhysics(),
        pageSnapping: false,

        controller: controller,
        scrollDirection: Axis.horizontal,
        children:[
          // OnboardScreen1(controller:controller),
          // OnboardScreen2(controller:controller),
          // OnboardScreen3(controller:controller)
        ],
    ),
    );
  }
}

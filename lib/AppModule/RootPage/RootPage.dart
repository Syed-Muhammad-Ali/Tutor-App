import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:megamind/AppModule/ChatModule/ViewController/InboxViewController.dart';
import 'package:megamind/AppModule/JobsModule/ViewController/jobs_root_selector.dart';
import 'package:megamind/AppModule/JobsModule/ViewController/jobs_search_filter.dart';
import 'package:megamind/AppModule/ProfileModule/MasterProfile/MasterProfileViewController.dart';
import 'package:megamind/AppModule/ProfileModule/TuteeProfileModule/ViewController/tutee_profile_otp_screen_view_controller.dart';
import 'package:megamind/AppModule/ProfileModule/TuteeProfileModule/ViewController/tutee_profile_view_controller.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeHome/ViewController/tutee_home_view_controller.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/ViewController/recurring_payment_list.dart';
import 'package:megamind/AppModule/TutorModule/TutorHome/ViewController/tutor_home_view_controller.dart';
import 'package:megamind/AppModule/TutorModule/TutorPaymentMedule/ViewController/tutor_payment_method.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';

class RootPage extends StatefulWidget {
  RootPage({Key? key, required this.userType}) : super(key: key);

  final int userType;

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage>
    with SingleTickerProviderStateMixin {
  // final autoSizeGroup = AutoSizeGroup();
  var _bottomNavIndex = 0; //default index of a first screen

  late AnimationController _animationController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  final iconList = <IconData>[
    Icons.home,
    Icons.payment_rounded,
    Icons.bookmark_border,
    Icons.chat,
    Icons.person,
  ];
  final selectdIconList = <String>[
    "assets/navBar/Home-1.png",
    "assets/navBar/invoice 2.png",
    "assets/navBar/Work-1.png",
    "assets/navBar/Chat-1.png",
    "assets/navBar/Profile-1.png",
  ];
  final IconList = <String>[
    "assets/navBar/Home.png",
    "assets/navBar/invoice 1.png",
    "assets/navBar/Work.png",
    "assets/navBar/Chat.png",
    "assets/navBar/Profile.png",
  ];

  @override
  void initState() {
    super.initState();
    // final systemTheme = SystemUiOverlayStyle.light.copyWith(
    //   systemNavigationBarColor: Colors.grey,
    //   systemNavigationBarIconBrightness: Brightness.light,
    // );
    // SystemChrome.setSystemUIOverlayStyle(systemTheme);

    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    Future.delayed(
      Duration(seconds: 1),
      () => _animationController.forward(),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      widget.userType == 0
          ? tutee_home_view_controller()
          : tutor_home_view_controller(),
      widget.userType == 0 ? RecuringPayment() : tutor_payment(),
      jobs_root_selector_view(
        type: widget.userType,
      ),
      InboxViewController(
        userType: widget.userType,
      ),
      MasterProfileViewController(
        type: widget.userType,
      ),
    ];
    return Scaffold(
      extendBody: true,
      body: Center(child: widgetOptions[_bottomNavIndex]),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: 5,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.grey : Colors.white;
          return Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: _bottomNavIndex == index
                    ? AssetImage(selectdIconList[index].toString())
                    : AssetImage(IconList[index].toString()),
                height: 20,
              ),
              // Icon(
              //   iconList[index],
              //   size: 24,
              //   color: _bottomNavIndex == index?CustomColor.primaryButtonColor:Colors.grey,
              // ),
              const SizedBox(height: 4),
            ],
          );
        },
        backgroundColor: Colors.white,
        activeIndex: _bottomNavIndex,
        splashColor: CustomColor.primaryButtonColor,
        notchAndCornersAnimation: animation,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.none,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}

class NavigationScreen extends StatefulWidget {
  final IconData iconData;

  NavigationScreen(this.iconData) : super();

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void didUpdateWidget(NavigationScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.iconData != widget.iconData) {
      _startAnimation();
    }
  }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
    super.initState();
  }

  _startAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: CircularRevealAnimation(
          animation: animation,
          centerOffset: Offset(80, 80),
          maxRadius: MediaQuery.of(context).size.longestSide * 1.1,
          child: Icon(
            widget.iconData,
            color: Colors.grey,
            size: 160,
          ),
        ),
      ),
    );
  }
}

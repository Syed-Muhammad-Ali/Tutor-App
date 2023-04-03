import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/OnBoardScreen/ViewController/on_board_controller_screen.dart';
import 'package:megamind/AppModule/OnBoardScreen/ViewController/on_board_screen1.dart';
import 'package:megamind/AppModule/OnBoardScreen/ViewController/on_boarding_view_controller.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'login_view_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = const Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() async {
    Get.offAll(() =>  onBoardingSlide());
    // Get.offAll(() =>  OnboardControllerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: AppConfig(context).width,
      color: CustomColor.backGround,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: AppConfig(context).height / 9,
          ),

          SizedBox(
              height: AppConfig(context).height / 9,
              width: AppConfig(context).height / 9,
              child: Image(image: AssetImage('assets/logo/logo.png'),)

          ),
          SizedBox(
            height: AppConfig(context).height / 10,
            child: const SleekCircularSlider(

              appearance: CircularSliderAppearance(
                spinnerMode: true,
                size: 30,
              ),
            ),
          )
        ],
      ),
    ));
  }
}

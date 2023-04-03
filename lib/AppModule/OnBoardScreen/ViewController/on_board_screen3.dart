import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/login_view_controller.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/sigup_type_view.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/sigup_view_controller.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/dot_selector.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class OnboardScreen3 extends StatelessWidget {
  // final PageController controller;
  //  OnboardScreen3({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFFCFCFF),
        width: AppConfig(context).width,
        height: AppConfig(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: AppConfig(context).height / 1.8,
              width: AppConfig(context).width-50,
              child: Image(image: AssetImage('assets/onBoarding/onboard3.png'),),
            ),
            Column(
              children: [
                customText(
                    text: 'Free of Charge',
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: AppConfig(context).width / 1.3,
                    child: customText(
                      text:
                          'The app does not charge a single dime so tutees can search and match up with tutors for free!',
                      fontSize: 15,
                    )),
                const SizedBox(height: 10,),
                dotSelector(context: context, value: 3),
              ],
            ),
            SizedBox(height: 20,),

            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

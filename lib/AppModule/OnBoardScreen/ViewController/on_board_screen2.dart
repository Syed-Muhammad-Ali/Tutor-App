import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/dot_selector.dart';
import 'package:megamind/AppModule/OnBoardScreen/ViewController/on_board_screen3.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class OnboardScreen2 extends StatelessWidget {
  // final PageController controller;
  // OnboardScreen2({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFFCFCFF),
        width: AppConfig(context).width,
        height: AppConfig(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: AppConfig(context).height / 1.8,
              width: AppConfig(context).width-50,
              child:Image(image: AssetImage('assets/onBoarding/onboard2.png'),),
            ),
            Column(
              children: [
                customText(
                    text: 'High Qualified tutors',
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                    width: AppConfig(context).width / 1.5,
                    child: customText(
                      text:
                          'Our tutors are all highly curated and have the necessary qualification and experience',
                      fontSize: 15,
                    )),
                const SizedBox(
                  height: 15,
                ),
                dotSelector(context: context, value: 2),
              ],
            ),
            Spacer(),
          // SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}

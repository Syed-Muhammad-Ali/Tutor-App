import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/dot_selector.dart';
import 'package:megamind/AppModule/OnBoardScreen/ViewController/on_board_screen2.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:megamind/AppModule/Utlis/image_crop_view.dart';

class OnboardScreen1 extends StatelessWidget {
 // final PageController controller;

 //  OnboardScreen1({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFFCFCFF),
        width: AppConfig(context).width,
        height: AppConfig(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 20,),
            SizedBox(

              height: AppConfig(context).height / 1.8,
              width: AppConfig(context).width-50,
              child:  Image(image: AssetImage('assets/onBoarding/onboard1.png'),),
            ),
            Container(
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // customLinearIndicator(width: 300, lineHeight: 5, percentage: 50, color: Colors.blue, paddingLeft: 30, paddingRight:30),

                  customText(
                      text: 'All In one App',
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  const SizedBox(height: 15,),
                  SizedBox(
                      width: AppConfig(context).width / 1.6,
                      child: customText(
                        text: 'Manage all your tuition lesson in one App',
                        fontSize: 15,
                      )),
                 const SizedBox(height: 15,),
                  dotSelector(context: context, value: 1),

                ],
              ),
            ),
Spacer(),


          ],
        ),
      ),
    );
  }
}

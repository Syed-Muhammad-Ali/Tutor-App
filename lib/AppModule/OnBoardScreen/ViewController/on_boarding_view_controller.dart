import 'dart:ui';

import 'package:calender_picker/extra/color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/sigup_type_view.dart';
import 'package:megamind/AppModule/OnBoardScreen/ViewController/on_board_screen1.dart';
import 'package:megamind/AppModule/OnBoardScreen/ViewController/on_board_screen2.dart';
import 'package:megamind/AppModule/OnBoardScreen/ViewController/on_board_screen3.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class onBoardingSlide extends StatefulWidget {
  const onBoardingSlide({Key? key}) : super(key: key);

  @override
  _onBoardingSlideState createState() => _onBoardingSlideState();
}

class _onBoardingSlideState extends State<onBoardingSlide> {
  // final controller=Get.put(HomeViewModel());
  CarouselController buttonCarouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFFCFCFF),
        child: Column(
          children: [
            Expanded(
              child: CarouselSlider(
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  // height: 150,
                  // aspectRatio: 16 / 9,
                  // viewportFraction: 0.8,
                  initialPage: currentIndex,
                  enableInfiniteScroll: false,
                  pageSnapping: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  // enlargeCenterPage: true,
                  // onPageChanged: callbackFunction,
                  onPageChanged: (index, reason) {
                    print(index);
                    // setState(() {
                    //   currentIndex=index;
                    // });
                  },
                  aspectRatio: 2.0,
                  disableCenter: true,
                  viewportFraction: 1,
                  enlargeCenterPage: false,
                  scrollDirection: Axis.horizontal,
                ),
                items: [1, 2, 3].map((index) {
                  return Builder(
                    builder: (BuildContext context) {
                      return index == 1
                          ? OnboardScreen1()
                          : index == 2
                              ? OnboardScreen2()
                              : OnboardScreen3(); //   Container(
                      //   width: MediaQuery.of(context).size.width,
                      //   margin: EdgeInsets.symmetric(horizontal: 5.0),
                      //   decoration: BoxDecoration(
                      //     color: AppColors.defaultDateColor,
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      //   child:    Stack(
                      //     alignment: Alignment.topLeft,
                      //     children: [
                      //       Container(
                      //         height: 150,
                      //         color: Colors.red,
                      //       ),
                      //       // Positioned(left: 10,top:10,child: myText(title: "",color: Colors.white,fontweight: FontWeight.w800)),
                      //     ],
                      //   ),
                      // );
                    },
                  );
                }).toList(),
              ),
            ),
            currentIndex == 0
                ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    height: 50,
                    width: AppConfig(context).width / 3,
                    decoration: const BoxDecoration(
                        color: CustomColor.backcolor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              36,
                            ),
                            bottomRight: Radius.circular(36))),
                    child: Center(
                      child: Text(
                        "Skip",
                        maxLines: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      currentIndex=2;
                    });
                    buttonCarouselController.animateToPage(2, duration: Duration(microseconds: 500), curve:Curves.easeIn);

                    // controller.animateToPage(0, duration: Duration(microseconds: 500),  curve:Curves.easeIn);
                    // Get.offAll(()=> OnboardScreen3());
                  },
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex=1;
                    });
                    buttonCarouselController.animateToPage(1, duration: Duration(microseconds: 500), curve:Curves.easeIn);

                    // controller.animateToPage(2, duration: Duration(microseconds: 500),  curve:Curves.easeIn);
                    // Get.offAll(()=> OnboardScreen3());
                  },
                  child: Container(
                    height: 50,
                    width: AppConfig(context).width / 3,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFEFF5FF), blurRadius: 16)
                        ],
                        color: CustomColor.primaryButtonColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              36,
                            ),
                            topLeft: Radius.circular(36))),
                    child: Center(
                      child: Text(
                        "Next",
                        maxLines: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
              ],
            )
                : currentIndex == 1
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 50,
                              width: AppConfig(context).width / 3,
                              decoration: const BoxDecoration(
                                  color: CustomColor.backcolor,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(
                                        36,
                                      ),
                                      bottomRight: Radius.circular(36))),
                              child: Center(
                                child: Text(
                                  "Skip",
                                  maxLines: 5,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                currentIndex=2;
                              });
                              buttonCarouselController.animateToPage(2, duration: Duration(microseconds: 500), curve:Curves.easeIn);

                              // controller.animateToPage(0, duration: Duration(microseconds: 500),  curve:Curves.easeIn);
                              // Get.offAll(()=> OnboardScreen3());
                            },
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex=2;
                              });
                              buttonCarouselController.animateToPage(2, duration: Duration(microseconds: 500), curve:Curves.easeIn);

                              // controller.animateToPage(2, duration: Duration(microseconds: 500),  curve:Curves.easeIn);
                              // Get.offAll(()=> OnboardScreen3());
                            },
                            child: Container(
                              height: 50,
                              width: AppConfig(context).width / 3,
                              decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFFEFF5FF), blurRadius: 16)
                                  ],
                                  color: CustomColor.primaryButtonColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(
                                        36,
                                      ),
                                      topLeft: Radius.circular(36))),
                              child: Center(
                                child: Text(
                                  "Next",
                                  maxLines: 5,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: customButton(
                                width: AppConfig(context).width / 1.1,
                                text: 'login',
                                color: CustomColor.primaryButtonColor,
                                function: () {
                                  Get.offAll(() => SignUpTypeView(type: 0));
                                }),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: customButton(
                                width: AppConfig(context).width / 1.1,
                                text: 'Sign Up',
                                color: Colors.white,
                                textColor: CustomColor.primaryButtonColor,
                                function: () {
                                  Get.offAll(() => SignUpTypeView(type: 1));
                                }),
                          ),
                        ],
                      ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

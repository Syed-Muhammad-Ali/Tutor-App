
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';

Widget backButton(){
  return GestureDetector(
    onTap: (){
      Get.back();
    },
    child: Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: CustomColor.backGround,
        borderRadius: BorderRadius.circular(5),
      ),
      child:const Center(child: Icon(Icons.arrow_back_ios,color: CustomColor.primaryButtonColor,size: 21,)),


    ),
  );
}
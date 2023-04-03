

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget SearchAppBarView({required BuildContext context}){
  return SizedBox(
    width: AppConfig(context).width/1.1,
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: (){
            Get.back();
          },
            child: Image(image:AssetImage('assets/icon/Back.png'),height: 20,width: 20,)),
        myText(text:'Find Jobs',fontweight: FontWeight.w500,size: 20),

        InkWell(
            onTap: (){
              Get.back();
            },
            child: Image(image:AssetImage('assets/icon/filter.png'),height: 20,width: 20,)),

      ],
    ),
  );
}
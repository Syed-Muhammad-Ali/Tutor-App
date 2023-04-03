

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget socialButton({required BuildContext context,required String image,required String text, Callback ? callback}){
  return GestureDetector(
    onTap: callback,
    child: Container(
      width: AppConfig(context).width,
      height: 60,
      decoration: BoxDecoration(
        color: CustomColor.backGround,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Color(0xFF9DA8C3),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
        child: Row(
          children: [
            Image(image: AssetImage(image),width: 30,height: 30,),
            SizedBox(width: AppConfig(context).width/10,),
            Text(text,style:const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
            ),),
          ],
        ),
      ),
    ),
  );
}
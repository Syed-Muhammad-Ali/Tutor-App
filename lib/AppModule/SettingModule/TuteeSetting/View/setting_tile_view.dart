

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
Widget settingTile({required BuildContext context,required String title,Callback ? callback}){
  return GestureDetector(
    onTap: callback,
    child: Container(
      alignment: Alignment.centerLeft,
      height:AppConfig(context).height/12,
      width: AppConfig(context).width/1.1,
      padding:const  EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: customText(text: title, fontSize: 12),
    ),
  );
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget homeAppBar({required BuildContext context}){
  return Container(
    width:AppConfig(context).width,
    height: 100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        Row(
          children:const  [
            Image(image: AssetImage('assets/home/Calendar.png')),
             SizedBox(width: 15,),
            Image(image: AssetImage('assets/home/notification.png')),
          ],
        ),

      ],
    ),
  );
}
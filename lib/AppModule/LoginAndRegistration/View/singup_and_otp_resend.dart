import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';

Widget signupAndOtpResendView(
    {required String text, required String text1, required double textSize,Callback ?callback}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: textSize),
      ),
      GestureDetector(
        onTap: callback,
          child: Text(
        text1,
        style: TextStyle(
            color: CustomColor.primaryButtonColor,fontWeight: FontWeight.w500, fontSize: textSize),
      ))
    ],
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget homeAddPostRequest({
  required BuildContext context,
  required String text,
  required String buttonText,
}) {
  return SizedBox(
    height: AppConfig(context).height / 5,
    width: AppConfig(context).width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       const Image(
          image: AssetImage('assets/home/Group.png'),
        ),
        const SizedBox(height: 5,),
        customText(text: text, fontSize: 12),
        const SizedBox(height: 5,),
        customButton(
            width: AppConfig(context).width / 2.5,
            text: buttonText,
            color: CustomColor.primaryButtonColor)
      ],
    ),
  );
}

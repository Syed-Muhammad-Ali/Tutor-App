import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget tutorAddSubjectView({required BuildContext context}) {
  return Container(
    height: AppConfig(context).height / 4,
    width: AppConfig(context).width / 1.2,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.white,
    ),
    child: Column(
      children: [


      ],
    ),
  );
}

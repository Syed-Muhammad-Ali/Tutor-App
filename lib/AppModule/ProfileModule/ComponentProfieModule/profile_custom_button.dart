import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget profileCustomButton(
    {required BuildContext context,
    required Color color,
    required Color colortxt,
    Callback? callback,
    required String text,
    Color textColor=Colors.white}) {
  return InkWell(
    onTap: callback,
    child: Container(
      width: AppConfig(context).width / 6,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(text,style: TextStyle(fontSize: 12,color: colortxt),),
      ),
    ),
  );
}

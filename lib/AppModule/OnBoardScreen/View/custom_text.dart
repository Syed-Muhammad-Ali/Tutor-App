import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customText(
    {required String text, required double fontSize, FontWeight? fontWeight,Color color=Colors.black}) {
  return Text(
    text,
    maxLines: 5,

    textAlign: TextAlign.center,
    style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Poppins',
        fontWeight: fontWeight ?? FontWeight.normal),

  );
}

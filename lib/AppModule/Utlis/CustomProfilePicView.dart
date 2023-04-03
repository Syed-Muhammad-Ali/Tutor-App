import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget customProfilePicView(
    {required BuildContext context,
    required String image,
    required double height,
    required double width}) {
  return Container(
    height: height,//
    width: width,//
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(212, 211, 211, 0.7),
            blurRadius: 2,
            spreadRadius: 1,
          )
        ]),
    child: Image.asset(
      image,
      width: 55,
      height: 55,
      fit: BoxFit.contain,
    ),
  );
}

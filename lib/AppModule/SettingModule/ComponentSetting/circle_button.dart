

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

Widget circleButtonContactUs({required String image,Callback ?callback}){
  return InkWell(
    onTap:callback,
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color:const  Color(0xFF444444),
          width: 1,
        )
      ),
      child:image!=''?Image(image: AssetImage(image),):const SizedBox(),
    ),
  );

}
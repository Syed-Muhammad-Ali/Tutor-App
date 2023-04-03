import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget delete_class_view({required BuildContext context,required Function Delcallback,required Function Cancelcallback}){
  return Container(
    height: 230,
    width: 300,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),

    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          subHeadingText(text: "Want to delete class?"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: simpleTextGrey(text: "you don't have a working connection please try again"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customButton(width: 100,
textColor: CustomColor.primaryButtonColor,
                  text: 'Cancel',
                  color: Colors.white,
                  function: (){
                  Cancelcallback();
                  }
              ),   customButton(width: 100,

                  text: 'Delete ',
                  color: CustomColor.primaryButtonColor,
                  function: (){
                  Delcallback();
                  }
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
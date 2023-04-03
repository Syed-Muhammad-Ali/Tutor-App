import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget  accept_tutor_tile({required BuildContext context,required Function Delcallback,required Function Cancelcallback}){
  return Container(
    height: 230,
    width: 300,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),

    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          subHeadingText(text: "Confirm John Raeze"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: simpleTextGrey(text: "Are you willing to confirm this tutor"),
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

                  text: 'Confirm ',
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
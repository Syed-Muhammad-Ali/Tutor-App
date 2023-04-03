import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget uploadButton({required BuildContext context}){
  return SizedBox(
    height:AppConfig(context).height/5,
    width: AppConfig(context).width/1.2,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        customText(text: 'Upload', fontSize: 13,
          // color: Colors.grey
        ),
        const SizedBox(height: 5,),
        Container(
          color: CustomColor.backGround,
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius:const Radius.circular(12),
            color: CustomColor.primaryButtonColor,

            child: ClipRRect(
              borderRadius:const BorderRadius.all(Radius.circular(12)),
              child: SizedBox(
                height:AppConfig(context).height/9 ,
                width: AppConfig(context).width/1.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("assets/icon/cloud.png"),height: 30,),
                    customText(text: 'Upload certificates or documents to verify', fontSize: 11,),

                  ],
                ),
              ),
            ),
          ),
        )

      ],
    ),
  );
}
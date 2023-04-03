


import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget NoPostButton({required BuildContext context,required Callback callback}){
  return SizedBox(
    height: AppConfig(context).height/5,
    width: AppConfig(context).width/2,
    child:  Column(
      children: [
        Image(image: AssetImage('assets/home/Group.png'),width: 80,height: 50,),
        SizedBox(height: 10,),
       myText(text: ' No Schedule found',size: 16,color: Color(0xff9DA8C3)),
        SizedBox(height: 10,),
        customButton(width: AppConfig(context).width/2.5,
            text: 'Post', color:Color(0xff2354D7),function:callback )

      ],
    ),
  );
}
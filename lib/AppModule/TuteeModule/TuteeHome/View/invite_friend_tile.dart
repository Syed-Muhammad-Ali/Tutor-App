
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget InviteFriendTile({required BuildContext context}){
  return Container(

    height:AppConfig(context).height/5,
    width: AppConfig(context).width/1.1,
    decoration: BoxDecoration(
      color: Color(0xFF2354D7).withOpacity(0.6),
      borderRadius: BorderRadius.circular(16),

      
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
        ),
        SizedBox(
          height: 40,
          child:Image(image: AssetImage('assets/home/gift.png'),) ,
        ),
        SizedBox(
         width: 40,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myText(text: 'Invite a friend',size: 14,color: Color(0xff444444)),
            myText(text: "Get 10\$ off for inviting",size: 16,color: Color(0xff444444),fontweight: FontWeight.w500),
            myText(text: "your friends",size: 16,color: Color(0xff444444),fontweight: FontWeight.w500)


          ],
        )
      ],
    ),
  ) ;
}
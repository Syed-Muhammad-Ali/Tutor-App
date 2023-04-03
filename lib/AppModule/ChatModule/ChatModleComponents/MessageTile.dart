import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/CustomProfilePicView.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget inboxListTile({required BuildContext context,required VoidCallback onCallBack,required title,required profile}) {
  return InkWell(
    onTap: (){
      onCallBack();
    },
    child: Container(
      width: AppConfig(context).width / 1.3,
      decoration: BoxDecoration(
        border: Border.all(color: CustomColor.textFieldBorderColor,width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding:  EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            // customProfilePicView(
            //     context: context,
            //     image: 'assets/logo/logo.png',
            //     height: AppConfig(context).width /6,
            //     width: AppConfig(context).width/6,
            // ),
            GFImageOverlay(
              image: AssetImage('${profile}'),
              height: 50,
              width: 50,
              shape: BoxShape.circle,
            ),
            SizedBox(width: 10,),
           Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                      '${title}',
                       style: TextStyle(
                         fontFamily: 'Poppins',
                         color: CustomColor.profileTextColorDark,
                         fontSize: 16,
                         fontWeight: FontWeight.w500
                       ),
                     ),
                     SizedBox(width:AppConfig(context).width/5,),
                     Text(
                       'Today',
                       style: TextStyle(
                           fontFamily: 'Poppins',
                           color: CustomColor.profileTextColor,
                           fontSize: 12,
                           fontWeight: FontWeight.w500
                       ),
                     ),

                   ],
                 ),
                 // SizedBox(height: 10,),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       'primary , mathematics',
                       style: TextStyle(
                           fontFamily: 'Poppins',
                           color: CustomColor.profileTextColor,
                           fontSize: 12,
                           fontWeight: FontWeight.w500
                       ),
                     ),
                     SizedBox(width:AppConfig(context).width/5,),
                     Container(
                       decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(5)),
                       child: Padding(
                         padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                         child: Text(
                           '5',
                           style: TextStyle(
                               fontFamily: 'Poppins',
                               color: Colors.white,
                               fontSize: 12,
                               fontWeight: FontWeight.w500
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),

               ],
             ),
           )
          ],
        ),
      ),
    ),
  );
}

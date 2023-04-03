import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class MasterProfileTile extends StatelessWidget {
  IconData iconData;
String title;
String title1;
bool isMembership;
bool isNotification;
VoidCallback callback;
  MasterProfileTile({Key? key,this.isNotification=false ,required this.callback, required this.iconData,this.isMembership=false,required this.title,required this.title1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        callback();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 76,
        width: MediaQuery.of(context).size.width - 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 20,
            ),
            if(!isMembership)
            Icon(
              iconData,
              size: 30,
              color: Colors.grey,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myText(
                    text:title,
                    size: 12,
                    fontweight: FontWeight.w600,
                    color: CustomColor.profileTextColorDark),
                SizedBox(
                  height: 8,
                ),
                myText(
                    text: title1,
                    size: 10,
                    fontweight: FontWeight.w400,
                    color: CustomColor.profileTextColor),
              ],
            ),
            Spacer(),

            if(isMembership)
              Image(image: AssetImage("assets/navBar/Profile.png"),height: 36,width: 36,),
            if(!isMembership)
            isNotification?
                Switch(value: false, onChanged: (value){

                }):
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
              color: Colors.grey,
            ),

            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}

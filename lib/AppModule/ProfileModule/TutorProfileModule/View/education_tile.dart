import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/ProfileModule/TutorProfileModule/View/tutor_add_education_view.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:megamind/AppModule/Utlis/funckey_message_popup.dart';

Widget educationTile({required BuildContext context}) {
  return SizedBox(
    // height: 130,

    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
             "Education",
              style:  TextStyle(
                color:CustomColor.profileTextColor,
                fontSize: 15,
              ),
            ),
            InkWell(
                onTap: (){
                  showDialog(context: context, builder: (context){
                    return FunkyOverlay(child: tutorAddEducationView(context: context));
                  });
                },
                child: const Text(
                  'Add',
                  style: TextStyle(
                    color: CustomColor.primaryButtonColor,
                    fontSize: 15,
                  ),
                ))
          ],
        ),
        SizedBox(height: 5,),
        Container(
            height: 113,
            width: AppConfig(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color:  CustomColor.textFieldBorderColor,
              ),
            ),
            padding: EdgeInsets.only(left: 15, right: 15,top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(
                        text: 'M.PHILL', fontSize: 16,color: CustomColor.profileTextColorDark, fontWeight: FontWeight.w500),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: const Image(

                              image: AssetImage('assets/home/Edit.png'),
                              height: 25,
                              width: 25,

                              color: Colors.blue,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Image(

                              image: AssetImage('assets/home/Delete.png'),
                              height: 25,
                              width: 25,

                              color: Colors.blue,
                            ))
                      ],
                    ),
                  ],
                ),
                customText(text: 'BRAC University', fontSize: 12,color: CustomColor.profileTextColorDark,),
                customText(text: 'Faculity of BioTechnology', fontSize: 12,color: CustomColor.profileTextColorDark,),
                customText(text: '(2022-2024)', color: CustomColor.profileTextColor,fontSize: 12),
              ],
            )),
      ],
    ),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget  genderTitle(
    {required BuildContext context,
    required Function menChange,
    required Function womenChange,
    required int group}) {
  return SizedBox(
    // height: AppConfig(context).height / 7,
    width: AppConfig(context).width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gender',
          style: TextStyle(
            color: CustomColor.profileTextColor,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Container(
              height: 58,
              width: AppConfig(context).width / 2.5,
              // padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color:  CustomColor.backGround,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: CustomColor.textFieldBorderColor,
                    width: 1,
                  )),
              child: _myRadioButton(
                title: "Male",
                value: 0,
                onChanged: (v) {
                  menChange(v);
                },
                group: group,
              ),
            ),
            Container(
              height: 58,
              width: AppConfig(context).width /2.5,
              // padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color:  CustomColor.backGround,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: CustomColor.textFieldBorderColor,
                    width: 1,
                  )),
              child: _myRadioButton(
                title: "Female",
                value: 1,
                onChanged: (v) {
                  womenChange(v);
                },
                group: group,
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _myRadioButton(
    {required String title,
    required int value,
    required Function onChanged,
    required int group}) {
  return RadioListTile(
    value: value,
    groupValue: group,
    onChanged: (v) {
      onChanged(v);
    },
    title: Text(title,style: TextStyle(fontSize: 10),),
  );
}

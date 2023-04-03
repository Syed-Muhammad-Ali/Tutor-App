import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/JobsModule/Components/icon_field.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/profile_custom_button.dart';

import 'package:megamind/AppModule/ProfileModule/TutorProfileModule/View/upload_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/InputFiled/custom_input_filed.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:megamind/AppModule/Utlis/profile_text_field.dart';

Widget add_subject_tile({required BuildContext context}) {
  return Container(
    // height: AppConfig(context).height / 1.4,
    width: AppConfig(context).width / 1.2,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.all(10),
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextFiled(isPass: false, labelText: "Search"),

            const SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 10,
              children: ["Physics", "Chemistry","Urdu","Hindi"]
                  .map((e) => InkWell(
                onTap: () {

                },
                child: Text("${e}",style: TextStyle(color: CustomColor.primaryButtonColor),)
              ))
                  .toList(),
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                profileCustomButton(
                    callback: () {
                      Navigator.pop(context);
                    },
                    colortxt:CustomColor.primaryButtonColor,
                    color: Colors.white,
                    text: 'cancel',
                    context: context,
                    textColor: CustomColor.primaryButtonColor),
                const SizedBox(
                  width: 5,
                ),
                profileCustomButton(
                    callback: () {
                      Navigator.pop(context);
                    },
                    colortxt: Colors.white,
                    color: CustomColor.primaryButtonColor,
                    text: 'Save',
                    context: context),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

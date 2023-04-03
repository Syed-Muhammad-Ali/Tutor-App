import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/JobsModule/Components/icon_field.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/profile_custom_button.dart';

import 'package:megamind/AppModule/ProfileModule/TutorProfileModule/View/upload_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:megamind/AppModule/Utlis/profile_text_field.dart';

Widget tutorAddEducationView({required BuildContext context}) {
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
            ProfileTextField(
              isPass: false,
              title: 'School',
              title2: '',
              width: AppConfig(context).width / 1.2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dates Attended",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "",
                  style: const TextStyle(
                    color: CustomColor.primaryButtonColor,
                    fontSize: 15,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            icon_Field(
                iconData: Icons.calendar_today_outlined,
                width: AppConfig(context).width,
                callback: () {
                  print("called");
                },
                title: ""),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Degree",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "",
                  style: const TextStyle(
                    color: CustomColor.primaryButtonColor,
                    fontSize: 15,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            icon_Field(
                iconData: Icons.keyboard_arrow_down_rounded,
                width: AppConfig(context).width,
                callback: () {
                  print("called");
                },
                title: "Mphil"),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Area of Study",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "",
                  style: const TextStyle(
                    color: CustomColor.primaryButtonColor,
                    fontSize: 15,
                  ),
                )
              ],
            ), const SizedBox(
              height: 5,
            ),
            icon_Field(
                iconData: Icons.keyboard_arrow_down_rounded,
                width: AppConfig(context).width,
                callback: () {
                  print("called");
                },
                title: ""),
            const SizedBox(
              height: 10,
            ),
            uploadButton(context: context),
            const SizedBox(
              height: 2,
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

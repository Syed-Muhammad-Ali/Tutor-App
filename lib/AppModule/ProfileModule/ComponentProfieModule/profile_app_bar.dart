import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/verify_email_and_phone_number.dart';
import 'package:megamind/AppModule/ProfileModule/TutorProfileModule/View/tutor_add_education_view.dart';
import 'package:megamind/AppModule/ProfileModule/TutorProfileModule/View/tutor_add_subject_view.dart';
import 'package:megamind/AppModule/SettingModule/TuteeSetting/ViewController/tutee_setting_view_controller.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:megamind/AppModule/Utlis/funckey_message_popup.dart';

Widget profileAppBar({required BuildContext context}) {
  return SizedBox(
    height: AppConfig(context).height / 12,
    width: AppConfig(context).width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 20,
        ),
        InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: CustomColor.primaryButtonColor,
            )),
        const SizedBox(
          width: 24,
        ),
        const Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,

          ),
        ),
        Spacer(),
        InkWell(
          onTap: (){
            Get.to( () => TuteeSettingViewController(),);


          },
            child: const Text(
          'Save',
          style: TextStyle(
            color: CustomColor.primaryButtonColor,
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),
        )),
        const SizedBox(
          width:20,
        ),
      ],
    ),
  );
}

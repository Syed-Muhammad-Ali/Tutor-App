import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/change_password_view_controller.dart';
import 'package:megamind/AppModule/Utlis/Button/back_button.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/InputFiled/custom_input_filed.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: AppConfig(context).width,
            height: AppConfig(context).height,
            color: CustomColor.backGround,
            padding: EdgeInsets.only(
                top: AppConfig(context).height / 19, left: 25, right: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  backButton(),
                  SizedBox(
                    height: AppConfig(context).height / 19,
                  ),
                  headingText(text: 'Change Password'),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextFiled(
                      isPass: true, labelText: 'New Password'),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextFiled(
                      isPass: true, labelText: 'Confirm Password'),
                  const SizedBox(
                    height: 20,
                  ),
                  customButton(
                      width: AppConfig(context).width,
                      text: 'Change My Password',
                      function: () {
                        Get.to(() => const ChangePasswordViewController());
                      },
                      color: CustomColor.primaryButtonColor),
                ])));
  }
}

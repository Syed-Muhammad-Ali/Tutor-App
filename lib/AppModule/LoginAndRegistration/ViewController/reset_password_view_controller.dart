import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/LoginAndRegistration/View/otp_from_filed.dart';
import 'package:megamind/AppModule/LoginAndRegistration/View/singup_and_otp_resend.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewModel/reset_password_view_model.dart';
import 'package:megamind/AppModule/Utlis/Button/back_button.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/InputFiled/custom_input_filed.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class ResetPasswordViewController extends StatelessWidget {
  ResetPasswordViewController({Key? key}) : super(key: key);
  var controller = Get.put(ResetPasswordViewModel());

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
            Obx(
              () => controller.otpSend.value
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headingText(text: 'Forgot Password'),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextFiled(

                            isPass: false, labelText: 'E-mail address'),
                        SizedBox(
                          height: AppConfig(context).height / 19,
                        ),
                        customButton(
                          height: 60,
                            width: AppConfig(context).width,
                            text: 'Reset my password',
                            function: () {
                              controller.otpSend.value = false;
                            },
                            color: CustomColor.primaryButtonColor),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headingText(text: 'Verification Code'),
                        const SizedBox(
                          height: 20,
                        ),
                        otpFromFiled(context: context),
                        const SizedBox(
                          height: 20,
                        ),
                        signupAndOtpResendView(
                            text: "Don't receive any code ?",
                            text1: "Resend now",
                            textSize: 13),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

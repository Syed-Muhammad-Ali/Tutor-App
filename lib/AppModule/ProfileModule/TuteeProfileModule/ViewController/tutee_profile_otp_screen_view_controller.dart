import 'package:flutter/material.dart';
import 'package:megamind/AppModule/LoginAndRegistration/View/otp_from_filed.dart';
import 'package:megamind/AppModule/LoginAndRegistration/View/singup_and_otp_resend.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/otp_succedd.dart';
import 'package:megamind/AppModule/Utlis/Button/back_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class TuteeProfileOtpScreenViewController extends StatelessWidget {
  bool isEmail;
  int type;
  TuteeProfileOtpScreenViewController({Key? key,required this.isEmail,required this.type}) : super(key: key);

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
            headingText(text: 'Verification Code'),
            const SizedBox(
              height: 20,
            ),
            otpFromFiled(context: context, ),
            const SizedBox(
              height: 20,
            ),
            signupAndOtpResendView(
                text: "Don't receive any code ?",
                text1: "Resend now",
                callback: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => otp_succeed(type: type, isEmail: isEmail),));
                },
                textSize: 13),
          ],
        ),
      ),
    );
  }
}

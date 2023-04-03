import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/LoginAndRegistration/View/singup_and_otp_resend.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/reset_password_view_controller.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/sigup_view_controller.dart';
import 'package:megamind/AppModule/RootPage/RootPage.dart';
import 'package:megamind/AppModule/Utlis/Button/back_button.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Button/social_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/InputFiled/custom_input_filed.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class LoginViewController extends StatelessWidget {
  bool type;

  LoginViewController({Key? key, required this.type}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            backButton(),
            SizedBox(
              height: AppConfig(context).height / 19,
            ),
            headingText(text: 'Login'),
            Expanded(
              child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: AppConfig(context).height / 10,
                    ),
                    const CustomTextFiled(
                        isPass: false, labelText: 'E-mail address'),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextFiled(
                        isPass: true, labelText: 'Your password'),
                    SizedBox(
                      height: AppConfig(context).height / 30,
                    ),
                    customButton(
                        width: AppConfig(context).width,
                        text: 'login',
                        function: () {
                          Get.to(() => RootPage(userType: type ? 1 : 0));
                        },
                        color: CustomColor.primaryButtonColor),
                    const SizedBox(
                      height: 25,
                    ),
                    // TODO:ForgetPassword screen call
                    GestureDetector(
                        onTap: () {
                          Get.to(() => ResetPasswordViewController());
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13),
                        )),

                    SizedBox(
                      height: AppConfig(context).height / 10,
                    ),
                    socialButton(
                        context: context,
                        image: 'assets/icon/path14.png',
                        text: 'Continue with Facebook'),
                    const SizedBox(
                      height: 10,
                    ),
                    socialButton(
                        context: context,
                        image: 'assets/icon/google.png',
                        text: 'Continue with Google'),
                    const SizedBox(
                      height: 20,
                    ),
                    signupAndOtpResendView(
                        text: "Don't have an account ?",
                        text1: "Signup",
                        textSize: 15,
                        callback: () {
                          Get.to(() => SignUpViewController());
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

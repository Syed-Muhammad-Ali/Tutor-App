import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/LoginAndRegistration/View/singup_and_otp_resend.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/sigup_view_controller.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewModel/sign_up_view_model.dart';
import 'package:megamind/AppModule/Utlis/Button/back_button.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

import 'login_view_controller.dart';

class SignUpTypeView extends StatelessWidget {
  int type;

  SignUpTypeView({Key? key, required this.type}) : super(key: key);
  var controller = Get.put(SignUpViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: AppConfig(context).height,
        width: AppConfig(context).width,
        color: CustomColor.backGround,
        padding: EdgeInsets.only(
            top: AppConfig(context).height / 19, left: 25, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                backButton(),
                SizedBox(
                  height: AppConfig(context).height / 19,
                ),
                headingText(text: 'Who are You'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.tutor.value = true;
                  },
                  child: Obx(
                    () => Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: controller.tutor.value
                                  ? CustomColor.primaryButtonColor
                                  : Colors.white,
                            )),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: controller.tutor.value
                                  ? Image(image: AssetImage('assets/userType/tutor.png'),height: 80,)
                                  :Image(image: AssetImage('assets/userType/tutor1.png'),height: 80,)
                            ),
                            Text(
                              "I am a tutor",
                              style: TextStyle(
                                  color:controller.tutor.value?Colors.black:Colors.grey,fontWeight: FontWeight.w500, fontSize: 15),
                            )

                          ],
                        )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    controller.tutor.value = false;
                  },
                  child: Obx(
                    () => Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: controller.tutor.value
                                  ? Colors.white
                                  : CustomColor.primaryButtonColor,
                            )),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: !controller.tutor.value
                                  ? Image(image: AssetImage('assets/userType/tutee.png'),height: 80,)
                                  : Image(image: AssetImage('assets/userType/tutee1.png'),height: 80,)
                            ),
                            Text(
                              "I am a tutee/parent",
                              style: TextStyle(
                                  color:!controller.tutor.value?Colors.black:Colors.grey,fontWeight: FontWeight.w500, fontSize: 13),
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                customButton(
                    width: AppConfig(context).width,
                    text: 'Continue',
                    color: CustomColor.primaryButtonColor,
                    function: () {
                      if (type == 0)
                        Get.to(() =>
                            LoginViewController(type: controller.tutor.value));
                      else
                        Get.to(SignUpViewController());
                    }),
                const SizedBox(
                  height: 20,
                ),
                signupAndOtpResendView(
                    text: "Have an account?",
                    text1: "Sign In",
                    textSize: 15,
                    callback: () {
                      Get.to(() =>
                          LoginViewController(type: controller.tutor.value));
                    }),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

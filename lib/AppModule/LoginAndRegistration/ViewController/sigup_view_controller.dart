import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/JobsModule/Components/icon_field.dart';
import 'package:megamind/AppModule/LoginAndRegistration/View/date_time_picker.dart';
import 'package:megamind/AppModule/LoginAndRegistration/View/selection_button.dart';
import 'package:megamind/AppModule/LoginAndRegistration/View/singup_and_otp_resend.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/login_view_controller.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewModel/sign_up_view_model.dart';
import 'package:megamind/AppModule/Utlis/Button/back_button.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/InputFiled/custom_input_filed.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class SignUpViewController extends StatelessWidget {
  SignUpViewController({Key? key}) : super(key: key);
  var controller = Get.put(SignUpViewModel());

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
                  headingText(text: 'SignUp'),
                  SizedBox(
                    height: AppConfig(context).height / 30,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                          physics: const ScrollPhysics(),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const CustomTextFiled(
                                  isPass: false,
                                  labelText: 'Full Name',
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const CustomTextFiled(
                                    isPass: false, labelText: 'E-mail address'),
                                const SizedBox(
                                  height: 10,
                                ),
                                const CustomTextFiled(
                                    isPass: true, labelText: 'Create password'),
                                const SizedBox(
                                  height: 10,
                                ),
                                icon_Field(

                                    isCalenderIcon: false,
                                    iconData: Icons.keyboard_arrow_down_rounded,
                                    color: CustomColor.backGround,
                                    width: AppConfig(context).width,
                                    callback: () {
                                      print("called");
                                    },
                                    title: "Gender"),
                                const SizedBox(
                                  height: 10,
                                ),
                                icon_Field(

                                    isCalenderIcon: true,
                                    iconData: Icons.calendar_today_outlined,
                                    color: CustomColor.backGround,
                                    width: AppConfig(context).width,
                                    callback: () {
                                      print("called");

                                    },
                                    title: "Date of birth"),
                                // Obx(
                                //   () => selectionButton(
                                //       context: context,
                                //       dropDown: controller.gender.value,
                                //       function: (val) {
                                //         controller.gender.value = val;
                                //       }),
                                // ),
                                // const SizedBox(
                                //   height: 10,
                                // ),
                                // Obx(() => datePicker(
                                //     birthdate: controller.birthdayDate.value,
                                //     function: (value) {
                                //       controller.birthdayDate.value = value;
                                //     })),
                                const SizedBox(
                                  height: 10,
                                ),
                                const CustomTextFiled(
                                    isPass: false, labelText: 'Location'),
                                Container(
                                  width: AppConfig(context).width ,
                                  child: Row(
                                    children: [
                                      Checkbox(
                                          value: false, onChanged: (value) {}),
                                     const  Text(
                                        'I agree to the',
                                        style:
                                            TextStyle(color: Colors.black,
                                              fontSize: 10

                                            ),

                                      ),
                                      const  Text(
                                        'Terms of Service ',
                                        style:
                                        TextStyle(color: CustomColor.primaryButtonColor,
                                          fontSize: 11,),
                                      ),
                                      const  Text(
                                        'and ',
                                        style:
                                        TextStyle(color: Colors.black,
                                          fontSize: 11,),
                                      ),
                                      const  Text(
                                        'Privacy Policy',
                                        style:
                                        TextStyle(color: CustomColor.primaryButtonColor,
                                          fontSize: 11,),
                                      ),
                                    ],
                                  ),
                                ),

                                customButton(
                                    width: AppConfig(context).width,
                                    text: 'Sign-up',
                                    function: () {},
                                    color: CustomColor.primaryButtonColor),
                                SizedBox(
                                  height: AppConfig(context).height / 70,
                                ),
                                signupAndOtpResendView(
                                    text: "Have an account?",
                                    text1: "Sign In",
                                    textSize: 12,
                                    callback: () {
                                      Get.to(() => LoginViewController(
                                            type: true,
                                          ));
                                    }),
                                const SizedBox(
                                  height: 10,
                                ),
                              ])))
                ])));
  }
}

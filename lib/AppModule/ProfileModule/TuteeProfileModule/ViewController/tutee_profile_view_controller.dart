import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/JobsModule/Components/icon_field.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/reset_password_view_controller.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewModel/reset_password_view_model.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/custom_image_preview.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/gender_title.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/profile_app_bar.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/profile_phone_number.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/showContries.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/verify_email_and_phone_number.dart';
import 'package:megamind/AppModule/ProfileModule/TuteeProfileModule/ViewController/tutee_profile_otp_screen_view_controller.dart';
import 'package:megamind/AppModule/ProfileModule/TuteeProfileModule/ViewModel/tutee_profile_view_model.dart';
import 'package:megamind/AppModule/ProfileModule/TutorProfileModule/View/add_subject_tile.dart';
import 'package:megamind/AppModule/ProfileModule/TutorProfileModule/View/education_tile.dart';
import 'package:megamind/AppModule/ProfileModule/TutorProfileModule/View/tutor_add_education_view.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/InputFiled/input_fileds.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:megamind/AppModule/Utlis/funckey_message_popup.dart';
import 'package:megamind/AppModule/Utlis/profile_text_field.dart';

class TuteeProfileViewController extends StatelessWidget {
  int type;

  TuteeProfileViewController({Key? key, required this.type}) : super(key: key);
  var controller = Get.put(TuteeProfileViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: AppConfig(context).width,
        height: AppConfig(context).height,
        padding: EdgeInsets.only(
            top: AppConfig(context).height / 19, left: 10, right: 10),
        child: Column(
          children: [
            profileAppBar(context: context),
            Expanded(
              child: SingleChildScrollView(
                // physics: AlwaysScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Obx(
                        () => imagePreView(
                            context: context,
                            image: controller.image.value,
                            controller: controller),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ProfileTextField(
                        isPass: false,
                        title: 'First Name',
                        title2: '',
                        width: AppConfig(context).width,
                      ),

                      if (type == 1)
                        SizedBox(
                          height: 15,
                        ),
                      if (type == 1)
                        educationTile(
                          context: context,
                        ),
                      if (type == 1)
                        SizedBox(
                          height: 15,
                        ),
                      if (type == 1)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Subject Capable of teaching",
                              style: const TextStyle(
                                color: CustomColor.profileTextColor,
                                fontSize: 15,
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        TuteeProfileOtpScreenViewController(
                                      isEmail: false,
                                      type: type,
                                    ),
                                  );
                                },
                                child: Text(
                                  "",
                                  style: const TextStyle(
                                    color: CustomColor.primaryButtonColor,
                                    fontSize: 15,
                                  ),
                                ))
                          ],
                        ),
                      if (type == 1)
                        SizedBox(
                          height: 5,
                        ),
                      if (type == 1)
                        Container(
                          child: Wrap(
                            spacing: 10,
                            alignment: WrapAlignment.start,
                            // direction: Axis.horizontal,
                            runSpacing: 10,

                            children: ["Physics", "Chemistry", "English", "Add"]
                                .map((e) => e.length == 3
                                    ? InkWell(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return FunkyOverlay(
                                                    child: add_subject_tile(
                                                        context: context));
                                              });
                                        },
                                        child: Container(
                                            width: 100,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: CustomColor
                                                      .primaryButtonColor,
                                                ),
                                                color: CustomColor.backGround,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    "Add new ",
                                                    style: TextStyle(
                                                      color: CustomColor
                                                          .primaryButtonColor,
                                                    ),
                                                  ),
                                                  Text(
                                                    "+",
                                                    style: TextStyle(
                                                      color: CustomColor
                                                          .primaryButtonColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                      )
                                    : Container(
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color:
                                                CustomColor.primaryButtonColor,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "${e}",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "X",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        )))
                                .toList(),
                          ),
                        ),

                      SizedBox(
                        height: 15,
                      ),

                      ProfileTextField(
                        isPass: false,
                        title: 'Email',
                        title2: 'verify',
                        callback2ndTitle: () {
                          // Get.find<ResetPasswordViewModel>().otpSend.value=false;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    TuteeProfileOtpScreenViewController(
                                  isEmail: true,
                                  type: type,
                                ),
                              ));
                        },
                        width: AppConfig(context).width,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date of birth",
                            style: const TextStyle(
                              color: CustomColor.profileTextColor,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "",
                            style: const TextStyle(
                              color: CustomColor.primaryButtonColor,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      icon_Field(
                          isCalenderIcon: true,
                          iconData: Icons.calendar_today_outlined,
                          width: AppConfig(context).width,
                          callback: () {
                            print("called");
                          },
                          title: ""),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Contact number",
                            style: const TextStyle(
                              color: CustomColor.profileTextColor,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),


                      SizedBox(
                        height: 58,
                        child:
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Obx(
                              () => InkWell(
                                onTap: () {
                                  showCountries(
                                  context: context,
                                  onSelectCountry: (country) {
                                  controller.countryCode.value =
                                  country.phoneCode;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  height: 58,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: CustomColor.backGround,
                                      border: Border.all(
                                          color: CustomColor.textFieldBorderColor)
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //       color: Colors.grey[500], blurRadius: 2)
                                      // ]

                                      ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "+${controller.countryCode.value}",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 25,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Container(
                                width: 100,
                                height: 58,
                                // decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(16),
                                //     color: CustomColor.backGround,
                                //     border: Border.all(
                                //         color: CustomColor.textFieldBorderColor)
                                //   // boxShadow: [
                                //   //   BoxShadow(
                                //   //       color: Colors.grey[500], blurRadius: 2)
                                //   // ]
                                //
                                // ),
                                child:  TextFormField(

                                  cursorColor:CustomColor.backGround,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16.0),

                                      borderSide:BorderSide(
                                        width: 1,
                                        color: CustomColor.textFieldBorderColor,

                                      ),

                                    ),
                                    border:OutlineInputBorder(

                                      borderRadius: BorderRadius.circular(16.0),
                                      borderSide:BorderSide(
                                        width: 1,
                                        color: CustomColor.textFieldBorderColor,
                                        // color: CustomColor.primaryButtonColor,

                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(

                                      borderRadius: BorderRadius.circular(16.0),
                                      borderSide:BorderSide(
                                        width: 1,
                                        color:   CustomColor.textFieldBorderColor,
                                        // color: CustomColor.primaryButtonColor,

                                      ),
                                    ),




                                    filled: true,
                                    fillColor: CustomColor.backGround,
                                    // contentPadding:const EdgeInsets.only(left: 20,top: 15,bottom: 15),
                                    focusColor: Colors.grey,
                                  ),
                                ),
                              )
                            ),
                            // Expanded(
                            //   child: ProfileTextField(
                            //     isTitle: false,
                            //     isPass: false,
                            //     title: '',
                            //     title2: '',
                            //     width: MediaQuery.of(context).size.width/1.8,
                            //   ),
                            // ),
                          ],
                        ),
                      ),


                      // SizedBox(
                      //   height: 15,
                      // ),

                      // profilePhoneNumber(context: context),
                      SizedBox(
                        height: 15,
                      ),
                      Obx(
                        () => genderTitle(
                          context: context,
                          menChange: (v) {
                            controller.group.value = v;
                          },
                          womenChange: (v) {
                            controller.group.value = v;
                          },
                          group: controller.group.value,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ProfileTextField(
                        isPass: false,
                        title: 'Address line',
                        title2: '',
                        width: AppConfig(context).width,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProfileTextField(
                            isPass: false,
                            title: 'Unit no',
                            title2: '',
                            width: AppConfig(context).width / 2.4,
                          ),
                          ProfileTextField(
                            isPass: false,
                            title: 'Postal Code',
                            title2: '',
                            width: AppConfig(context).width / 2.4,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ProfileTextField(
                        isPass: true,
                        title: 'Password',
                        title2: '',
                        width: AppConfig(context).width,
                      ),
                      SizedBox(
                        height: 65,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

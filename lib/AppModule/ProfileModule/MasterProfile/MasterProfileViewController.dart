import 'package:calender_picker/extra/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/change_password_view_controller.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/profile_app_bar.dart';
import 'package:megamind/AppModule/ProfileModule/MasterProfile/MasterProfileTile.dart';
import 'package:megamind/AppModule/ProfileModule/MasterProfile/UserAccountInfoView.dart';
import 'package:megamind/AppModule/ProfileModule/TuteeProfileModule/ViewController/tutee_profile_view_controller.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeProfileModule/ViewController/tutee_profile_view_controller.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class MasterProfileViewController extends StatefulWidget {
  int type;

  MasterProfileViewController({Key? key, required this.type}) : super(key: key);

  @override
  _MasterProfileViewControllerState createState() =>
      _MasterProfileViewControllerState();
}

class _MasterProfileViewControllerState
    extends State<MasterProfileViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Container(
        width: AppConfig(context).width,
        height: AppConfig(context).height,
        padding: EdgeInsets.only(
            top: AppConfig(context).height / 19, left: 10, right: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                myText(
                    text: "Profile",
                    size: 15,
                    fontweight: FontWeight.w600,
                    color: CustomColor.profileTextColorDark),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GFImageOverlay(
                      height: 80,
                      width: 80,
                      shape: BoxShape.circle,
                      image: AssetImage("assets/home/tuteeProfile.png"),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        myText(
                            text: "Jhon steward",
                            size: 16,
                            fontweight: FontWeight.w600,
                            color: CustomColor.profileTextColorDark),
                        myText(
                            text: "Jhonsteward@gmail.com",
                            size: 12,
                            fontweight: FontWeight.w400,
                            color: CustomColor.profileTextColor),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                myText(
                    text: "General",
                    size: 14,
                    fontweight: FontWeight.w600,
                    color: CustomColor.profileTextColor),
                SizedBox(
                  height: 16,
                ),
                MasterProfileTile(
                  callback: () {
                    Get.to(()=>TuteeProfileViewController(type: widget.type),);
                    // Get.to(()=>UserAccountInfoView(type: widget.type),);
                    //
                  },
                  iconData: Icons.person,
                  title: "Account Information",
                  title1: "Change your Account Information",
                ),
                SizedBox(
                  height: 16,
                ),
                MasterProfileTile(
                  callback: () {
                    Get.to(()=>ChangePasswordViewController(),);
                  },
                  iconData: Icons.unarchive,
                  title: "Password",
                  title1: "Change your password",
                ),
                SizedBox(
                  height: 16,
                ),

                myText(
                    text: "Notification",
                    size: 14,
                    fontweight: FontWeight.w600,
                    color: CustomColor.profileTextColor),
                SizedBox(
                  height: 16,
                ),
                MasterProfileTile(
                  callback: () {},
                  iconData: Icons.notifications,
                  title: "Notification",
                  title1: "you will receive daily update",
                  isMembership: false,
                  isNotification: true,
                ),
                SizedBox(
                  height: 16,
                ),
                MasterProfileTile(
                  isNotification: true,
                  callback: () {},
                  iconData: Icons.notifications,
                  title: "Permotional Notification",
                  title1: "Get notified when promotion",
                  isMembership: false,
                ),
                SizedBox(
                  height: 16,
                ),
                myText(
                    text: "More",
                    size: 14,
                    fontweight: FontWeight.w600,
                    color: CustomColor.profileTextColor),
                SizedBox(
                  height: 16,
                ),
                MasterProfileTile(
                  callback: () {},
                  iconData: Icons.star,
                  title: "Rate us",
                  title1: "you will receive daily update",
                  isMembership: false,
                  isNotification: false,
                ),
               SizedBox(
                  height: 16,
                ),
                MasterProfileTile(
                  callback: () {},
                  iconData: Icons.flag,
                  title: "Privacy and Policy",
                  title1: "Frequently asked question",
                  isMembership: false,
                  isNotification: false,
                ),
                 SizedBox(
                  height: 16,
                ),
                MasterProfileTile(
                  callback: () {},
                  iconData: Icons.flag,
                  title: "Terms and Condition",
                  title1: "Frequently asked question",
                  isMembership: false,
                  isNotification: false,
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

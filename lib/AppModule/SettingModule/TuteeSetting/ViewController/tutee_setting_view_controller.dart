import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/ErrorPage/error404.dart';
import 'package:megamind/AppModule/ErrorPage/no_internet.dart';
import 'package:megamind/AppModule/SettingModule/ComponentSetting/custom_term_and_policy.dart';

import 'package:megamind/AppModule/SettingModule/TuteeSetting/View/setting_tile_view.dart';
import 'package:megamind/AppModule/SettingModule/TuteeSetting/ViewController/contact_us_view_controller.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_bar.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class TuteeSettingViewController extends StatelessWidget {
  const TuteeSettingViewController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: AppConfig(context).height,
        width: AppConfig(context).width,
        color: CustomColor.backGround,
        child: Column(

          children: [
            app_bar(title: 'Setting',isIcon: true,),
            const SizedBox(height: 20,),
            settingTile(context: context, title: 'Language'),
            const SizedBox(height: 10,),
            settingTile(context: context, title: 'error message',callback: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Error404(),));

            },),  const SizedBox(height: 10,),
            settingTile(context: context, title: 'no internet',callback: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NoInternet(),));

            },),
            const SizedBox(height: 10,),
            settingTile(context: context, title: 'About us'),
            const SizedBox(height: 10,),
            settingTile(context: context, title: 'Contact us',callback: (){
              Get.to(()=>const ContactUsViewController());
            }),
            const SizedBox(height: 10,),
            settingTile(context: context, title: 'Rate us',callback: () {
              Get.to(() =>  NoInternet());
            }),
            const SizedBox(height: 10,),
            settingTile(context: context, title: 'Terms & services',
                callback: (){
                  Get.to(()=>CustomTermAndPolicy(appBartitle: 'Terms & conditions',));
                }
            ),
            const SizedBox(height: 10,),
            settingTile(context: context, title: 'Privacy Policy',
                callback: (){
                  Get.to(()=>CustomTermAndPolicy(appBartitle: 'Privacy Policy',));
                }),

          ],
        ),
      ),
    );
  }
}

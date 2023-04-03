import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/SettingModule/ComponentSetting/circle_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_bar.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class ContactUsViewController extends StatelessWidget {
  const ContactUsViewController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: AppConfig(context).height,
            width: AppConfig(context).width,
            color: CustomColor.backGround,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                app_bar(
                  title: '',
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:const  EdgeInsets.only(left: 20, ),
                  width: AppConfig(context).width / 1.7,
                  child: const Text(
                    'Get in touch\nif you would like to\ncontact us',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      fontFamily:'Poppins',
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
               const SizedBox(height: 20,),
               Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(text: 'Lodon', fontSize: 15),
                      customText(text: '10 union Teracc', fontSize: 15),
                      customText(text: 'EIOGG', fontSize: 15),
                      customText(text: 'Get directions', fontSize: 15),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(text: 'Hellosurf@gmail.com', fontSize: 15),
                      customText(text: '+880 123 452 4589', fontSize: 15),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  width: AppConfig(context).width/1.3,
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      circleButtonContactUs(image: 'assets/setting/Frame.png'),
                      const SizedBox(width: 10,),
                      circleButtonContactUs(image: 'assets/setting/Group.png'),
                      const SizedBox(width: 10,),
                      circleButtonContactUs(image: ''),
                      const SizedBox(width: 10,),
                      circleButtonContactUs(image: ''),

                    ],
                  ),
                ),
              ],
            )));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class VerfiyEmailAndPasswordScreen extends StatelessWidget {
  final bool phone;

  VerfiyEmailAndPasswordScreen({Key? key, required this.phone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: AppConfig(context).height,
        width: AppConfig(context).width,
        child: Column(

          children: [
            SizedBox(
              height: AppConfig(context).height/5,
            ),

            const Image(
              image: AssetImage('assets/home/Check.png'),
              color: Colors.green,
              height: 50,
              width: 50,
            ),
            SizedBox(
              height: AppConfig(context).height/22,
            ),
            SizedBox(
              height: AppConfig(context).height / 5,
              child: Column(
                children: [
                  phone
                      ? customText(
                          text: 'Your number is \n now verified!',
                          fontSize: 17,
                          fontWeight: FontWeight.bold)
                      : customText(
                          text: 'Your email is \n now verified!',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                  const SizedBox(
                    height: 10,
                  ),
                  customText(
                      text:
                          'You can view the appointment booking info \n in the Appointment section.',
                      fontSize: 11),
                ],
              ),
            ),
            SizedBox(
                height: AppConfig(context).height/4
            ),
            customButton(
              text: 'Done',
              color: CustomColor.primaryButtonColor,
              width: AppConfig(context).width / 1.1,
            ),

          ],
        ),
      ),
    );
  }
}

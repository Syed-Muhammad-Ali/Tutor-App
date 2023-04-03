import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:megamind/AppModule/RootPage/RootPage.dart';
import 'package:megamind/AppModule/TutorModule/TutorPaymentMedule/ViewController/tutor_payment_history.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class otp_succeed extends StatelessWidget {
  int type;
  bool isEmail;

  otp_succeed({Key? key, required this.type,required this.isEmail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/icon/done.json',
                  repeat: false,
                  height: 150,
                  width: 150,
                ),

                SizedBox(
                  height: 20,
                ),
                simpleTitleText(text: "Your ${isEmail?"email":"Phone Number"} is verified now",),
                SizedBox(
                  height: 20,
                ),
                simpleTextGrey(
                    text:
                    'You can view the appointment booking info in the "Appointment" section'),
                SizedBox(
                  height: 20,
                ),
                customButton(
                    width: 200,
                    text: 'Done',
                    color: CustomColor.primaryButtonColor,
                    function: () {
                      if (type == 0)
                        Get.offAll(() => RootPage(userType: this.type));
                      else{

                        Get.to(() => tutor_payment_history());
                      }

                    }),
              ],
            ),
          ),
        ));
  }
}

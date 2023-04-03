import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:megamind/AppModule/RootPage/RootPage.dart';
import 'package:megamind/AppModule/TutorModule/TutorPaymentMedule/ViewController/tutor_payment_history.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class payment_succeed extends StatelessWidget {
  int type;

  payment_succeed({Key? key, required this.type}) : super(key: key);

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
              'assets/checkBox.json',
              repeat: false,
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            simpleTitleText(text: "Payment Succesfull!"),
            SizedBox(
              height: 20,
            ),
            simpleTextGrey(
                text:
                    "your payment is successful and your due is cleared for now"),
            SizedBox(
              height: 20,
            ),
            customButton(
                width: 200,
                text: 'Back to Home',
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

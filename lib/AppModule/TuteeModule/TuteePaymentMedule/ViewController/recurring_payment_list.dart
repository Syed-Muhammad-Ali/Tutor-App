import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/ViewController/recurring_payment_detail.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class RecuringPayment extends StatelessWidget {
  const RecuringPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                simpleTitleText(text: "Bills"),

              ],
            ), SizedBox(height: 30,),
            simpleTitleText(text: " Due Amount"),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "50",
                style: const TextStyle(
                  color: CustomColor.primaryButtonColor,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(height: 20,),
            customButton(
                width: AppConfig(context).width - 60,
                text: 'View More',
                color: CustomColor.primaryButtonColor,
                function: () {
                  // Navigator.pop(context);

                  // Get.to(()=>const OnboardScreen2());
                }),
            SizedBox(height: 10,),
            Row(
              children: [
                simpleTitleText(text: "Recurring Payment"),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RecuringPayment_details(),));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          simpleTitleText(text: "************123"),
Icon(Icons.arrow_forward_ios_rounded,size: 20,color: CustomColor.primaryButtonColor,)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          simpleTextGrey(text: "Tan Banjam"),
                          simpleTextGrey(text: "Last paid: 2 july 2021"),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

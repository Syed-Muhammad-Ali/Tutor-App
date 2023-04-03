import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/View/choose_payment_method.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class CurrentPaymentVIew extends StatelessWidget {
  const CurrentPaymentVIew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child:  Container(
        // color: Colors.deepOrange,
        // decoration: BoxDecoration(
        //   // color: Colors.white,
        //   borderRadius: BorderRadius.circular(10),
        //
        // ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    simpleTitleText(text: "Ten Bengamin"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "50",
                      style: const TextStyle(
                        color: CustomColor.primaryButtonColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    simpleTextGrey(text: "Due Date Today"),
                    SizedBox(
                      height: 10,
                    ),
                    simpleTextGrey(text: "250 was paid 12/10/2021"),
                    SizedBox(
                      height: 20,
                    ),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customButton(
                      textColor: CustomColor.primaryButtonColor,
                      width: 120,
                      height: 50,
                      text: 'View Bill',
                      color: Colors.white,
                      function: () {
                        Navigator.pop(context);

                        // Get.to(()=>const OnboardScreen2());
                      }),
                  customButton(

                      width: 120,
                      height: 50,
                      text: 'Pay Now',
                      color: CustomColor.primaryButtonColor,
                      function: () {
                        print("pay now");
                        Navigator.push(context, MaterialPageRoute(builder: (context) => choose_payment_method()));

                        // Get.to(()=>const OnboardScreen2());
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

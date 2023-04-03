import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/PaymentModule/ViewController/succeed_payment.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/View/accout_check.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/ViewController/recurring_payment_detail.dart';
import 'package:megamind/AppModule/TutorModule/TutorPaymentMedule/ViewModel/tutor_payment_view_model.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class tutor_payment extends StatelessWidget {
 tutor_payment({Key? key}) : super(key: key);
final controller=Get.put(tutor_payment_view_model());
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
                    simpleTitleText(text: "Payment"),

                  ],
                ), SizedBox(height: 30,),
                simpleTitleText(text: "Available Balance"),
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

                SizedBox(height: 10,),
                Row(
                  children: [
                    simpleTitleText(text: "Recurring Payment"),

                  ],
                ),
                SizedBox(
                  height: 20,
                ),
            Obx(()=>   title_check_box(title: "Bank Transfer",ischeck: controller.checkBank.value,callback: (value){
              controller.checkBank.value=!controller.checkBank.value;
                }),),
                SizedBox(
                  height: 20,
                ),
                customButton(
                    width: AppConfig(context).width - 60,
                    text: 'Get Paid',
                    color: CustomColor.primaryButtonColor,
                    function: () {
                      // Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => payment_succeed(type: 1,),));


                      // Get.to(()=>const OnboardScreen2());
                    }),
              ],
            ),
          ),
        ));
  }
}

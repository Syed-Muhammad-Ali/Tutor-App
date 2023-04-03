import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/View/accout_check.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/ViewController/payment_module_selector.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class RecuringPayment_details extends StatefulWidget {
  const RecuringPayment_details({Key? key}) : super(key: key);

  @override
  _RecuringPayment_detailsState createState() => _RecuringPayment_detailsState();
}

class _RecuringPayment_detailsState extends State<RecuringPayment_details> {
  bool isCheck=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.backcolor,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                // SizedBox(
                //   height: 40,
                // ),
                Container(
                  // color: Colors.blue,
                  height: 50,
                  child: Row(
                    children: [
                      // SizedBox(
                      //   width: 20,
                      // ),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.blue,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      simpleTitleText(text: "Recurring payment"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
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
                            simpleTitleText(text: "Bill Amount"),
                            Text(
                              "50",
                              style: const TextStyle(
                                color: CustomColor.primaryButtonColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                              ),
                            ),   ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        simpleTextGrey(text: "you will be charged on today"),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            simpleTitleText(text: "*************123"),
                            customButton(
                              textColor: CustomColor.primaryButtonColor,
                                width: 100,
                                height: 41,
                                text: 'Change',
                                color: Colors.white,
                                function: () {
                                  Navigator.pop(context);

                                  // Get.to(()=>const OnboardScreen2());
                                }),

                           ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width - 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        simpleTextGrey(text: "Pay this ammount"),
                        simpleTextprimary(text: "#123"),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                title_check_box(title: "Credit/Debit", callback: () {
                  setState(() {
                    isCheck=!isCheck;
                  });
                },ischeck: isCheck,),
                title_check_box(title: "Bank Transfer", callback: () {
                  setState(() {
                    isCheck=!isCheck;
                  });
                },ischeck: !isCheck,),
                SizedBox(
                  height: 60,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   width: 10,
                    // ),
                    customButton(
                        width: 300,
                        text: 'Confirm',
                        color: CustomColor.primaryButtonColor,
                        function: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => payment_module_selector(type: 0),));


                          // Get.to(()=>const OnboardScreen2());
                        }),
                  ],
                ),
                // customButton(width: AppConfig(context).width -60,
                //     text: 'Apply',
                //     color: CustomColor.primaryButtonColor,
                //     function: (){
                //       Navigator.pop(context);
                //
                //       // Get.to(()=>const OnboardScreen2());
                //     }
                // ),
              ],
            ),
          ),
        ));
  }
}

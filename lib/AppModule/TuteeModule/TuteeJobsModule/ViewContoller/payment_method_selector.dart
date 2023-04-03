import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/delete_class_view.dart';
import 'package:megamind/AppModule/ChatModule/View/coursel_calender.dart';
import 'package:megamind/AppModule/JobsModule/Components/week_schedule_selector.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/accept_tutor_tile.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/classes_pice_list.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/tutot_request_list.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/View/accout_check.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/InputFiled/custom_input_filed.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:megamind/AppModule/Utlis/funckey_message_popup.dart';
import 'package:megamind/AppModule/Utlis/multi_date_selector.dart';

class payment_method_selector_view extends StatefulWidget {
  const payment_method_selector_view({Key? key}) : super(key: key);

  @override
  _payment_method_selector_viewState createState() => _payment_method_selector_viewState();
}

class _payment_method_selector_viewState extends State<payment_method_selector_view> {
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
                      SizedBox(
                        width: 20,
                      ),
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
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width - 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                          height: 60,
                          width: 200,
                          child: CustomTextFiled(
                              isPass: false, labelText: "Add voucher Code")),
                      customButton(
                          width: 100,
                          text: 'Apply',
                          color: CustomColor.primaryButtonColor,
                          function: () {
                            Navigator.pop(context);

                            // Get.to(()=>const OnboardScreen2());
                          }),
                    ],
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
                          Navigator.pop(context);

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

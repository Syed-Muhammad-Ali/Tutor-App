import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/delete_class_view.dart';
import 'package:megamind/AppModule/ChatModule/View/coursel_calender.dart';
import 'package:megamind/AppModule/JobsModule/Components/week_schedule_selector.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/accept_tutor_tile.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/classes_pice_list.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/tutot_request_list.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/ViewContoller/payment_method_selector.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:megamind/AppModule/Utlis/funckey_message_popup.dart';
import 'package:megamind/AppModule/Utlis/multi_date_selector.dart';

class job_invoice extends StatelessWidget {
  const job_invoice({Key? key}) : super(key: key);

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
                      simpleTitleText(text: "18/Mar/2021"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width - 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                simpleTitleText(text: "Course Detail"),
                                simpleTextprimary(text: "#123"),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                simpleTextGrey(text: "Due Date: "),
                                simpleTextprimary(text: "08/10/2021"),
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            simpleTextGrey(text: "Job id"),
                            simpleTextprimary(text: "#123"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            simpleTextGrey(text: "Timing"),
                            simpleTextprimary(text: "12:30 - 1:20"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            simpleTextGrey(text: "Days/week"),
                            simpleTextprimary(text: "4"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            simpleTextGrey(text: "Class/Month"),
                            simpleTextprimary(text: "14"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            simpleTextGrey(text: "Date Started"),
                            simpleTextprimary(text: "14-10-2021"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Class of April',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ), Text(
                              '12 classes',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        classes_price_list(),

                      ],
                    ),
                  );
                },),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: AppConfig(context).width - 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'price',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Class',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '16 ',
                              style: const TextStyle(
                                color: CustomColor.primaryButtonColor,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Duration',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '4h',
                              style: const TextStyle(
                                color: CustomColor.primaryButtonColor,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Price per hour     ',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '10',
                              style: const TextStyle(
                                color: CustomColor.primaryButtonColor,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Price for First month',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  '3 Mar - 30 Mar',
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '120',
                              style: const TextStyle(
                                color: CustomColor.primaryButtonColor,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   width: 10,
                    // ),
                    customButton(
                        width: 300,
                        text: 'Done',
                        color: CustomColor.primaryButtonColor,
                        function: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => payment_method_selector_view(),));

                          // Get.to(()=>const OnboardScreen2());
                        }),
                  ],
                ),
                SizedBox(
                  height: 20,
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

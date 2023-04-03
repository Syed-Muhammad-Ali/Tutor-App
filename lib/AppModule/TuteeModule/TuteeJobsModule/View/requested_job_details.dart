import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/delete_class_view.dart';
import 'package:megamind/AppModule/ChatModule/View/coursel_calender.dart';
import 'package:megamind/AppModule/JobsModule/Components/week_schedule_selector.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/accept_tutor_tile.dart';
import 'package:megamind/AppModule/PaymentModule/ViewController/job_invoice.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/tutot_request_list.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:megamind/AppModule/Utlis/funckey_message_popup.dart';
import 'package:megamind/AppModule/Utlis/multi_date_selector.dart';

class tutee_requested_job_detail extends StatelessWidget {
  const tutee_requested_job_detail({Key? key}) : super(key: key);

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
                      simpleTitleText(text: "Mathematics"),
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
                        simpleTitleText(text: "Course Detail"),
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
                Container(
                  width: AppConfig(context).width - 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        simpleTitleText(text: "Tutee"),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // customProfilePicView(
                            //     context: context,
                            //     image: 'assets/logo/logo.png',
                            //     height: AppConfig(context).width /6,
                            //     width: AppConfig(context).width/6,
                            // ),
                            GFImageOverlay(
                              height: 50,
                              width: 50,
                              shape: BoxShape.circle,
                              color: Colors.green,
                              image: AssetImage('assets/logo/logo.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Numan SHakir',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  // SizedBox(height: 10,),

                                  Text(
                                    '12 year old',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // SizedBox(height: 20,),
                //
                // Container(
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10)
                //
                //   ),
                //   width: MediaQuery.of(context).size.width-50,
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child:  multi_date_selector(),
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: AppConfig(context).width - 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: CustomColor.primaryButtonColor,
                        ),
                        Expanded(
                            child: simpleTextGrey(
                                text:
                                    "punjab pakistan ryk lahore punjab pakistan ryk lahore")),
                      ],
                    ),
                  ),
                ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        simpleTitleText(text: "Schedule"),
                        week_selector_schdule(
                          onSellect: (list) {},
                        ),
                      ],
                    ),
                  ),
                ),
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
                ),tutor_request_list(),

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
                          // Navigator.pop(context);
Navigator.push(context, MaterialPageRoute(builder: (context) => job_invoice(),));
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

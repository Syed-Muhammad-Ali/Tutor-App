import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:megamind/AppModule/JobsModule/Components/icon_field.dart';
import 'package:megamind/AppModule/JobsModule/Components/jobs_text_field.dart';
import 'package:megamind/AppModule/JobsModule/Components/week_schedule_selector.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/profile_text_field.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/add_tutee_to_job.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:megamind/AppModule/Utlis/datePickerModal.dart';
import 'package:megamind/AppModule/Utlis/funckey_message_popup.dart';
import 'package:megamind/AppModule/Utlis/multi_date_selector.dart';

class tutee_jobs_post extends StatelessWidget {
  bool isparent;

  tutee_jobs_post({Key? key, this.isparent = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.backGround,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: AppConfig(context).width,
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // customProfilePicView(
                    //     context: context,
                    //     image: 'assets/logo/logo.png',
                    //     height: AppConfig(context).width /6,
                    //     width: AppConfig(context).width/6,
                    // ),
                    SizedBox(height:50,width: 50,child:  Image(image: AssetImage('assets/home/tuteeProfile.png'),)),
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
                                color: CustomColor.profileTextColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            if (isparent)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      return add_tutee_to_job(context);
                    },
                    child: Container(
                      width: AppConfig(context).width /2.5,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: CustomColor.primaryButtonColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            // customProfilePicView(
                            //     context: context,
                            //     image: 'assets/logo/logo.png',
                            //     height: AppConfig(context).width /6,
                            //     width: AppConfig(context).width/6,
                            // ),
                            Icon(Icons.add,
                                color: CustomColor.primaryButtonColor),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Add Tutee',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: CustomColor.primaryButtonColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Course',
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
            icon_Field(
                iconData: Icons.keyboard_arrow_down_rounded,
                width: AppConfig(context).width - 50,
                color: Colors.white,
                callback: () {
                  print("called");
                },
                title: "Choose a course"),
            SizedBox(
              height: 20,
            ),
            icon_Field(
                iconData: Icons.keyboard_arrow_down_rounded,
                width: AppConfig(context).width - 50,
                color: Colors.white,
                callback: () {
                  print("called");
                },
                title: "Choose level"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Location',
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
            jobs_text_field(
              title: "Address Line",
              isPass: false,
              width: AppConfig(context).width - 50,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                jobs_text_field(
                  title: "1207",
                  isPass: false,
                  width: AppConfig(context).width / 2.5,
                ),
                jobs_text_field(
                  title: "1207",
                  isPass: false,
                  width: AppConfig(context).width / 2.5,
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
                  'Schedule',
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
            week_selector_schdule(
              onSellect: (days) {
                print(days);
              },
            ),
            SizedBox(
              height: 10,
            ),
            icon_Field(
              isCalenderIcon: true,
                iconData: Icons.calendar_today_outlined,
                width: AppConfig(context).width - 50,
                color: Colors.white,
                callback: () {
                  print("called");
                  datePicker(
                      context: context,
                      callback: (date) {
                        print(date);
                      });
                },
                title: "Choose start Date"),
            SizedBox(
              height: 10,
            ),
            icon_Field(
                iconData: Icons.access_time,
                width: AppConfig(context).width - 50,
                color: Colors.white,
                callback: () {
                  print("called");
                },
                title: "Set Duration"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price per week',
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
            // if(isparent)
            //   multi_date_selector(),
            // if(!isparent)
            jobs_text_field(
              isPass: false,
              title: "15",
              width: AppConfig(context).width - 50,
            ),
            // if(isparent)
            //   Column(
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             'price',
            //             style: const TextStyle(
            //               color: Colors.black,
            //               fontSize: 15,
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             'Total Class',
            //             style: const TextStyle(
            //               color: Colors.black,
            //               fontSize: 15,
            //             ),
            //           ), Text(
            //             '16 ',
            //             style: const TextStyle(
            //               color: CustomColor.primaryButtonColor,
            //               fontSize: 15,
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             'Total Duration',
            //             style: const TextStyle(
            //               color: Colors.black,
            //               fontSize: 15,
            //             ),
            //           ), Text(
            //             '4h',
            //             style: const TextStyle(
            //               color: CustomColor.primaryButtonColor,
            //               fontSize: 15,
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             'Price per hour     ',
            //             style: const TextStyle(
            //               color: Colors.black,
            //               fontSize: 15,
            //             ),
            //           ), Text(
            //             '10',
            //             style: const TextStyle(
            //               color: CustomColor.primaryButtonColor,
            //               fontSize: 15,
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Divider(color:Colors.grey,),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start  ,
            //             children: [
            //               Text(
            //                 'Total Price for First month',
            //                 style: const TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                 ),
            //               ),
            //               Text(
            //                 '3 Mar - 30 Mar',
            //                 style: const TextStyle(
            //                   color: Colors.grey,
            //                   fontSize: 15,
            //                 ),
            //               ),
            //             ],
            //           ), Text(
            //             '120',
            //             style: const TextStyle(
            //               color: CustomColor.primaryButtonColor,
            //               fontSize: 15,
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //     ],
            //   ),
            SizedBox(
              height: 10,
            ),
            customButton(
                width: AppConfig(context).width - 60,
                text: 'Publish Job Post ',
                color: CustomColor.primaryButtonColor,
                function: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return FunkyOverlay(
                          isTremor: true,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                  color: CustomColor.backcolor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 100,
                                      child: Lottie.asset(
                                          'assets/icon/done.json',
                                          repeat: false),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        subHeadingblack(text: "Job is Posted")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Text(
                                        'Your job is now posted,wait for the tutor request!',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        customButton(
                                            width: 200,
                                            text: 'Done',
                                            color:
                                                CustomColor.primaryButtonColor,
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
                          ));
                    },
                  );

                  // Get.to(()=>const OnboardScreen2());
                }),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

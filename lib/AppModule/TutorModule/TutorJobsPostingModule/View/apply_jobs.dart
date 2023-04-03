import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class apply_on_job extends StatelessWidget {
  const apply_on_job({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backcolor,
        body: Container(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
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
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)

            ),
            width: MediaQuery.of(context).size.width-50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  simpleTitleText(text: "Mathematics"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      simpleTextGrey    (text: "Job id"),
                      simpleTextprimary    (text: "#123"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      simpleTextGrey    (text: "Timing"),
                      simpleTextprimary    (text: "12:30 - 1:20"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      simpleTextGrey    (text: "Days/week"),
                      simpleTextprimary    (text: "4"),
                    ],
                  ),  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      simpleTextGrey    (text: "Class/Month"),
                      simpleTextprimary    (text: "14"),
                    ],
                  ), Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      simpleTextGrey    (text: "Date Started"),
                      simpleTextprimary    (text: "14-10-2021"),
                    ],
                  ),


                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: AppConfig(context).width-50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)

            ),
            child: Padding(
              padding:  EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  simpleTitleText(text: "Tutee"),
                  Row(
                    crossAxisAlignment:CrossAxisAlignment.start,
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
                        image: AssetImage('assets/home/tuteeProfile.png'),
                      ),
                      SizedBox(width: 10,),
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
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            // SizedBox(height: 10,),

                            Text(
                              '12 year old',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: AppConfig(context).width-50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)

            ),
            child: Padding(
              padding:  EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Icon(Icons.location_on_rounded,color: CustomColor.primaryButtonColor,),
                  Expanded(child: simpleTextGrey(text: "punjab pakistan ryk lahore punjab pakistan ryk lahore")),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),

          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)

            ),
            width: MediaQuery.of(context).size.width-50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  simpleTitleText(text: "Earning"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      simpleTextGrey    (text: "Duration"),
                      simpleTextprimary    (text: "#123"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      simpleTextGrey    (text: "price/hour"),
                      simpleTextprimary    (text: "4"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      simpleTextGrey    (text: "Days/week"),
                      simpleTextprimary    (text: "4"),
                    ],
                  ),  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      simpleTextGrey    (text: "1st month earning"),
                      simpleTextprimary    (text: "140"),
                    ],
                  ),


                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          customButton(width: AppConfig(context).width -60,
              text: 'Apply',
              color: CustomColor.primaryButtonColor,
              function: (){
              Navigator.pop(context);

                // Get.to(()=>const OnboardScreen2());
              }
          ),
        ],
      ),
    ));
  }
}

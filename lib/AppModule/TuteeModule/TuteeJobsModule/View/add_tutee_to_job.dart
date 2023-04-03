import 'package:flutter/material.dart';
import 'package:megamind/AppModule/JobsModule/Components/jobs_text_field.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:megamind/AppModule/Utlis/funckey_message_popup.dart';

add_tutee_to_job(BuildContext context){
  return  showDialog(
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Name',
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
                      title: "Name",
                      isPass: false,
                      width: AppConfig(context).width - 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Age',
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
                      title: "Age",
                      isPass: false,
                      width: AppConfig(context).width - 50,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        customButton(width: 90,
                            text: 'Cancel',
                            color: Colors.white,
                            textColor: CustomColor.primaryButtonColor,
                            function: (){
                              Navigator.pop(context);

                              // Get.to(()=>const OnboardScreen2());
                            }
                        ),
                        SizedBox(width: 10,),
                        customButton(width: 80,
                            text: 'Done',
                            color: CustomColor.primaryButtonColor,
                            function: (){
                              Navigator.pop(context);

                              // Get.to(()=>const OnboardScreen2());
                            }
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
      );

    },
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:megamind/AppModule/ProfileModule/ComponentProfieModule/show_countries.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

import 'input_number_filed.dart';

Widget profilePhoneNumber({required BuildContext context,Callback ?callback}){
  return  SizedBox(
    height: AppConfig(context).height/7,
    child: Column(
      children: [
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Phone Number',style: TextStyle(color:Colors.grey,fontSize: 15,),),
        InkWell(
            onTap:callback,
            child: const Text('verify',style: TextStyle(color:CustomColor.primaryButtonColor,fontSize: 15,),))
      ],
        ),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                // showCountries(context: context,onSelectCountry: (country){
                // });
              },
              child: Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(16),
                    border: Border.all(
                        color: Colors.grey)
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.grey[500], blurRadius: 2)
                  // ]

                ),
                child:const  Center(
                    child:Text('92')),
              ),
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width/2,
              child: InputField(
                height: 80,
                hint: "123456789",
                width: AppConfig(context).width/1.5,
                errorText: "please enter phone Number",
                bordercolor: Colors.grey,
                backcolor: Colors.white,
                textInputType: TextInputType.phone,
                onchange: (value) {},
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
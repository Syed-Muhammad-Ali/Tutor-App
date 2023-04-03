import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/LoginAndRegistration/View/date_time_picker.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget dateOfBirthday(
    {required BuildContext context,
    required var birthday,
    required Function change}) {
  return SizedBox(
    height: AppConfig(context).height/9,
    width: AppConfig(context).width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Date of Birthday',style: TextStyle(color:Colors.grey,fontSize: 15,),),
        datePicker(
            birthdate: birthday,
            function: (value) {
              change(value);
            }),
      ],
    ),
  );
}

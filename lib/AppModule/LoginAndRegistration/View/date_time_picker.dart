
import 'package:flutter/cupertino.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';

Widget datePicker({required String birthdate,required Function function}){
  return Container(
    padding:const  EdgeInsets.only(left: 15,right: 12,top: 10),
    height: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(
        color:Color(0xFFE0E6F3),
      ),

    ),
    child: DateTimePicker(
      decoration: InputDecoration(
        focusColor: Colors.grey,
        border:InputBorder.none,
        suffixIcon: Container(
          padding: EdgeInsets.only(top: 7,bottom: 7,left: 13,right:0 ),

            child: Image(image: AssetImage('assets/icon/Calendar.png'),fit: BoxFit.fill,))

      ),
      initialValue: 'BirthDayDate',
      fieldLabelText: 'BirthDayDate',
      fieldHintText: 'BirthDayDate',
      dateLabelText: 'BirthDayDate',
      dateHintText:birthdate==""?"BirthDayDate":birthdate,
      style:const TextStyle(color:Colors.black,fontSize: 15,),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      onChanged: (val){
        function(val);
      },
      validator: (val) {
        print(val);
        return null;
      },
      onSaved: (val) => print(val),
    ),
  );
}

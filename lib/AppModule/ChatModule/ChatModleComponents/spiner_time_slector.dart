import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';

Widget spiner_time_selector({required BuildContext context,required Function Yes_callback,required Function Cancelcallback}){

  return Container(
    height: 230,
    width: 300,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),

    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TimePickerSpinner(
            minutesInterval: 1,
            secondsInterval: 1,
            is24HourMode: false,
            normalTextStyle: TextStyle(
                fontSize: 20,
                color: Colors.black12,
                fontWeight: FontWeight.w600),
            itemWidth: 30,
            highlightedTextStyle: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            // time: DateTime.now(),
            spacing: 20,
            itemHeight: 35,
            isForce2Digits: true,
            onTimeChange: (time) {

            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customButton(
                  width: 100,
                  textColor: CustomColor.primaryButtonColor,
                  text: 'Cancel',
                  color: Colors.white,
                  function: (){
                    Cancelcallback();
                  }
              ),   customButton(width: 100,

                  text: 'PostPone',
                  color: CustomColor.primaryButtonColor,
                  function: (){
                    Yes_callback();
                  }
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
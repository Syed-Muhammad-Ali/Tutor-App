
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/create_new_password.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

Widget otpFromFiled({required BuildContext context}){
  return Padding(
    padding: const EdgeInsets.only(left: 20,right: 20),
    child: PinCodeTextField(
      keyboardType:TextInputType.number ,
      cursorColor:CustomColor.primaryButtonColor,
      textStyle: TextStyle(
        color:CustomColor.primaryButtonColor.withOpacity(0.9),
      ),

      length: 4,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 50,
        borderWidth: 1,
        activeColor: Colors.grey,
        selectedColor:Colors.grey,
        inactiveColor: Colors.grey,
        selectedFillColor: Colors.blue,

      ),
      onCompleted: (v) {
       Get.off(()=>const CreateNewPassword());
      },
      onChanged: (value) {
        print(value);
      },
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      }, appContext: context,
    ),
  );
}
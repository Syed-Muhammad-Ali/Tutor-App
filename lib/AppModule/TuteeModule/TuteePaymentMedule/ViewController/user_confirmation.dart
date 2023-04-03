import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/reset_password_view_controller.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/ViewController/credit_card_list_view_controller.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/InputFiled/custom_input_filed.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class user_confirmation_view extends StatelessWidget {
  const user_confirmation_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backcolor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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

                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                simpleTitleText(text: "Confirm thats you"),

     SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: simpleTextGrey(text: "please enter your password to change the payment method"),
                ),
                const SizedBox(
                  height: 20,
                ),
               CustomTextFiled(
                    isPass: true, labelText: 'Your password'),
                const SizedBox(
                  height: 10,
                ),
                // TODO:ForgetPassword screen call
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.to(() => ResetPasswordViewController());
                        },
                        child: Text(
                          'Forgot Password?',

                          style: TextStyle(

                              color: CustomColor.primaryButtonColor, fontSize: 13),
                        )),


                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    customButton(

                        width: 300,
                        height: 60,
                        text: "Done",
                        color: CustomColor.primaryButtonColor,
                        function: () {
Get.to(()=>credit_card_list_view_controller());
                        }),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

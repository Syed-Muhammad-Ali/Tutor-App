import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/ViewController/user_confirmation.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class choose_payment_method extends StatelessWidget {
  const choose_payment_method({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backcolor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                  simpleTitleText(text: "Payment Method")

                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height-150,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            simpleTitleText(text: "**************** 123"),
                            // SizedBox(
                            //   height: 10,
                            // ),
                           Checkbox(value: true, onChanged: (value){

                           }),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                customButton(

                    width: 300,
                    height: 50,
                    text: "Confirm",
                    color: CustomColor.primaryButtonColor,
                    function: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => user_confirmation_view(),));
                    }),
              ],
            )

          ],
        ),
      ),
    );
  }
}

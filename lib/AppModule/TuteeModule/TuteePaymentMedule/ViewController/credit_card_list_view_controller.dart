import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/View/credit_card_tile.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/ViewController/add_credit_card_view_controller.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/ViewController/user_confirmation.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class credit_card_list_view_controller extends StatelessWidget {
  const credit_card_list_view_controller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 40.0,
        width: 40.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              Get.to(() => add_credit_card_view_controller());
            },
            child: Icon(
              Icons.add,
              size: 30,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
          ),
        ),
      ),
      backgroundColor: CustomColor.backcolor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              height: MediaQuery.of(context).size.height - 100,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return credit_Card_tile();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Container(
// width: AppConfig(context).width,
// height: 150,
// decoration: BoxDecoration(
// color: Colors.white,
// ),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Padding(
// padding: EdgeInsets.only(
// left: AppConfig(context).width -
// AppConfig(context).width / 2.5,
// ),
// child: Container(
// height: 150 / 3,
// width: AppConfig(context).width / 1.5,
// decoration: BoxDecoration(
// color: CustomColor.primaryButtonColor,
// borderRadius: BorderRadius.only(
// bottomLeft: Radius.circular(500)),
// ),
// ),
// ),
// Container(
// alignment: Alignment.center,
// child: Column(
// children: [
// // SizedBox(
// ],
// ),
// ),
// Container(
// height: 150 / 4,
// width: AppConfig(context).width / 1.9,
// decoration: BoxDecoration(
// color: CustomColor.primaryButtonColor,
// borderRadius: BorderRadius.only(
// topRight: Radius.circular(500)),
// ),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// // Padding(
// //   padding: const EdgeInsets.only(
// //     bottom: 20,
// //   ),
// //   child: myText(
// //     title: "Powered by : DEVICON",
// //     color: Colors.black,size: 12,
// //
// //   ),
// // ),
// ],
// ),
// ),
// ],
// )),

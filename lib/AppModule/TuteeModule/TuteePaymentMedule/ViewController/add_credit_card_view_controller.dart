import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/PaymentModule/ViewController/succeed_payment.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/ViewModel/add_credit_card_view_model.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/View/credit_card_tile.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/ViewController/user_confirmation.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/InputFiled/input_fileds.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class add_credit_card_view_controller extends StatefulWidget {
  add_credit_card_view_controller({Key? key}) : super(key: key);

  @override
  _add_credit_card_view_controllerState createState() => _add_credit_card_view_controllerState();
}

class _add_credit_card_view_controllerState extends State<add_credit_card_view_controller> {
  final controller = Get.put(add_credit_card_view_model());

  FocusNode dateFocusNode = FocusNode();

  TextEditingController dateController = TextEditingController();

  String date = 'MM/YYYY';

  String ?dateErrorMsg="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backcolor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
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
                    simpleTitleText(text: "Add card")
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              credit_Card_tile(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      input_field(
                          errorMessage: "",
                          focusNode: FocusNode(),
                          onChange: (value) {},
                          hint: "Card Number",
                          keyboard: TextInputType.number),
                      input_field(
                          errorMessage: "",
                          focusNode: FocusNode(),
                          onChange: (value) {},
                          hint: "Card Holder Name",
                          keyboard: TextInputType.name),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: TextFormField(
                              controller: dateController,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.grey),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                hintText: 'MM/YYYY',
                                errorText: this.dateErrorMsg,
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 16),
                              ),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                              cursorColor: Colors.grey,
                              focusNode: this.dateFocusNode,
                              keyboardType: TextInputType.datetime,
                              onChanged: (value) {
                                setState(() {
                                  value = value.replaceAll(RegExp(r"\D"), "");
                                  switch (value.length) {
                                    case 0:
                                      dateController.text = "MM/YYYY";
                                      dateController.selection =
                                          TextSelection.collapsed(offset: 0);
                                      break;
                                    case 1:
                                      dateController.text = "${value}M/YYYY";
                                      dateController.selection =
                                          TextSelection.collapsed(offset: 1);
                                      break;
                                    case 2:
                                      dateController.text = "$value/YYYY";
                                      dateController.selection =
                                          TextSelection.collapsed(offset: 2);
                                      break;
                                    case 3:
                                      dateController.text =
                                      "${value.substring(0, 2)}/${value.substring(2)}YYY";
                                      dateController.selection =
                                          TextSelection.collapsed(offset: 4);
                                      break;
                                    case 4:
                                      dateController.text =
                                      "${value.substring(0, 2)}/${value.substring(2, 4)}YY";
                                      dateController.selection =
                                          TextSelection.collapsed(offset: 5);
                                      break;
                                    case 5:
                                      dateController.text =
                                      "${value.substring(0, 2)}/${value.substring(2, 5)}Y";
                                      dateController.selection =
                                          TextSelection.collapsed(offset: 6);
                                      break;
                                    case 6:
                                      dateController.text =
                                      "${value.substring(0, 2)}/${value.substring(2, 6)}";
                                      date ="${value.substring(0, 2)}/${value.substring(2, 6)}";
                                      dateController.selection =
                                          TextSelection.collapsed(offset: 7);
                                      break;
                                  }
                                  if (value.length > 6) {
                                    dateController.text =
                                    "${value.substring(0, 2)}/${value.substring(2, 6)}";
                                    date =
                                    "${value.substring(0, 2)}/${value.substring(2, 6)}";
                                    dateErrorMsg = null;
                                    dateController.selection =
                                        TextSelection.collapsed(offset: 7);
                                  }

                                  print(date);
                                });
                              },
//                     onChanged: (value) => setState(() {
//
//                       // CardExpirationFormatter().formatEditUpdate(dateController.value, TextEditingController(text: "/").value);
//                       date = value;
//                       if ( value.length == 2) {
//                         dateController.value = TextEditingController(text:value +  "/").value;
//                       }
//
// print(date);
//                       dateErrorMsg = null;
//                     }),
                            ),
                          ),
                          input_field(
                              width: MediaQuery.of(context).size.width / 2.5,
                              errorMessage: "",
                              focusNode: FocusNode(),
                              onChange: (value) {},
                              hint: "CVV",
                              keyboard: TextInputType.number),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Obx(
                            () => InkWell(
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: controller.saveCard.value
                                          ? Colors.blue
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                controller.saveCard.value =
                                    !controller.saveCard.value;
                              },
                            ),
                          ),
                          Text(
                            "save the card after a succesful payment",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      customButton(
                          width: 200,
                          text: 'Add Card',
                          color: CustomColor.primaryButtonColor,
                          function: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payment_succeed(type: 0,),));

                            // Get.to(()=>const OnboardScreen2());
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
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

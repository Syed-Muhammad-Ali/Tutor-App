import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/PaymentModule/ViewController/payment_history_view.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_bar.dart';

class tutor_payment_history extends StatefulWidget {
  const tutor_payment_history({Key? key}) : super(key: key);

  @override
  _tutor_payment_historyState createState() => _tutor_payment_historyState();
}

class _tutor_payment_historyState extends State<tutor_payment_history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(

      child: Column(
        children: [

          app_bar(title: "Bill History",isTitle: true,),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  simpleTextGrey(text: "Monthly bill"),
                  simpleTextprimary(text: "50"),
                ],
              ),
              Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      simpleTextprimary(text: "March 21"),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: paymentHistoryView(),
          )),
        ],
      ),
    ));
  }
}

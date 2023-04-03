import 'package:calender_picker/extra/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class NotificationView extends StatefulWidget {
  bool isDrawer;
  NotificationView({ this.isDrawer=true});
  @override
  _NotificationViewState createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backcolor,
   
     body: Column(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                // SizedBox(
                //   width: 20,
                // ),
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
                simpleTitleText(text: "Notification"),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,

              
              itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Container(
                  // height: 100,
                  decoration: BoxDecoration(
border: Border(bottom: BorderSide(color: Colors.grey.shade400)),
                  ),
                  child:   Padding(
                      padding:
                          const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/logo/logo.png"),
                            height: 50,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              simpleTextGrey(text: "this is my push notify"),
                              SizedBox(height: 10,),
                              simpleTextGrey(text: "2:20 PM"),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                   
                ),
              );
            },)
          ),
        ],
      ),
    );
  }
}

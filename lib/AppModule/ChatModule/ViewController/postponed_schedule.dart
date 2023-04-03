import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:intl/intl.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/spiner_time_slector.dart';
import 'package:megamind/AppModule/ChatModule/View/coursel_calender.dart';
import 'package:megamind/AppModule/ChatModule/View/schedule_classes_tile.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class postponed_schedule_view extends StatefulWidget {
  // final int type;
  // postponed_schedule_view({Key? key,required this.type}) : super(key: key);

  @override
  _postponed_schedule_viewState createState() =>
      _postponed_schedule_viewState();
}

class _postponed_schedule_viewState extends State<postponed_schedule_view> {
  // bool selectTime = false;
String newDate="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.blue,
                    )),
                SizedBox(
                  width: 20,
                ),
                simpleTitleText(text: "Numan Shakir"),
                Spacer(),
                GFImageOverlay(
                  height: 35,
                  width: 35,
                  shape: BoxShape.circle,
                  color: Colors.green,
                  image: AssetImage('assets/home/tuteeProfile.png'),
                ),
                InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.blue,
                    )),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  tableViewCalender(startDate: DateTime.now(),
                    selectedDate: (date) {
                      print(date);
                      setState(() {
                        newDate=DateFormat('dd/MM/yyyy').format(date).toString();
                      });
                    },
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      subHeadingText(text: "Today's Classes")
                    ],
                  ),
                  if(newDate=="")
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                    child: Container(
                      // height: 150,
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  subHeadingwhite(
                                      text: "Pick a Date from calender"),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 70,
                                      // width: 60,
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(
                                              Icons.cancel_rounded,
                                              color: Colors.white,
                                              size: 30,
                                            ),
                                          ),
                                          Text(
                                            "Cancel",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  if(newDate!="")
                  spiner_time_selector(
                      context: context,
                      Yes_callback: () {  Navigator.pop(context);},
                      Cancelcallback: () {
                        Navigator.pop(context);
                      })
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

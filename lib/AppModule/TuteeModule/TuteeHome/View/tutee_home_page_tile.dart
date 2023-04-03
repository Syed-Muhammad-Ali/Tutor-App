import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/delete_class_view.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/spiner_time_slector.dart';
import 'package:megamind/AppModule/ChatModule/View/coursel_calender.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/funckey_message_popup.dart';

class tutee_home_tile extends StatefulWidget {
  const tutee_home_tile({Key? key}) : super(key: key);

  @override
  _tutee_home_tileState createState() => _tutee_home_tileState();
}

class _tutee_home_tileState extends State<tutee_home_tile> {
  bool expanded = false;
bool showTIle=false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(

      //gi width:  MediaQuery.of(context).size.width/1.5,
      height: expanded?160:90,
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 10,),
          Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "${"13:00"}",
                  style: TextStyle(color:CustomColor.profileTextColorDark, fontSize: 16),
              ),
              Text(
                "${"14:21"}",
    style: TextStyle(color:CustomColor.profileTextColor, fontSize: 14),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                // width: 100,
                // height: 150,
                // width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 10, 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.all_inclusive_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              subHeadingwhite(text: "${"title"}"),
                              Text(
                                "${"startTime"}" + "-" + "${"endTime"}",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Spacer(),
                          !expanded
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      expanded = !expanded;

                                    });
                                    Timer(Duration(milliseconds: 300), (){
                                 setState(() {
                                   showTIle=!showTIle;
                                 });
                                    });
                                  },
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      showTIle=!showTIle;
                                      expanded = !expanded;
                                      // Timer(Duration(milliseconds: 300), (){
                                      //   setState(() {
                                      //     showTIle=!showTIle;
                                      //   });
                                      // });
                                    });
                                  },
                                  child: Icon(
                                    Icons.arrow_drop_up,
                                    color: Colors.white,
                                  ),
                                ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      if (showTIle)
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (0 == 0) {
                                    // widget.onPostponed();
                                    // setState(() {
                                    //   isCHooseNewDateDate = !isCHooseNewDateDate;
                                    // });
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        ///TODO:set date
                                        return FunkyOverlay(
                                          isTremor: true,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Container(
                                                height: 400,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    tableViewCalender(
                                                      selectedDate: (date) {},
                                                      startDate: DateTime.now(),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        customButton(
                                                            width: 120,
                                                            textColor: CustomColor
                                                                .primaryButtonColor,
                                                            text: 'Cancel',
                                                            color: Colors.white,
                                                            function: () {
                                                              Navigator.pop(
                                                                  context);
                                                              // Cancelcallback();
                                                            }),
                                                        customButton(
                                                            width: 120,
                                                            text: 'Set Date',
                                                            color: CustomColor
                                                                .primaryButtonColor,
                                                            function: () {
                                                              Navigator.pop(
                                                                  context);
                                                              showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return FunkyOverlay(
                                                                      isTremor:
                                                                          true,
                                                                      child: spiner_time_selector(
                                                                          context: context,
                                                                          Yes_callback: () {},
                                                                          Cancelcallback: () {
                                                                            Navigator.pop(context);
                                                                          }));
                                                                },
                                                              );

                                                              // Yes_callback();
                                                            }),
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        );
                                      },
                                    );
                                  }
                                },
                                child: Container(
                                  height: 70,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.notifications_active,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      Text(
                                        "Postponed",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      // return FunkyOverlay(
                                      //   isTremor: true,
                                      //   child: spiner_time_selector(context: context, Yes_callback: (){
                                      //
                                      //   }, Cancelcallback: (){
                                      //     Navigator.pop(context);
                                      //   })
                                      // );
                                      ///TODO:schdule
                                      return FunkyOverlay(
                                        isTremor: true,
                                        child: delete_class_view(
                                            context: context,
                                            Delcallback: () {
                                              Navigator.pop(context);
                                            },
                                            Cancelcallback: () {
                                              Navigator.pop(context);
                                            }),
                                      );

                                      ///TODO:set date
                                      // return FunkyOverlay(
                                      //   isTremor: true,
                                      //   child:
                                      //       Padding(
                                      //         padding: const EdgeInsets.symmetric(horizontal: 20),
                                      //         child: Container(
                                      //
                                      //
                                      //             height: 400,
                                      //             decoration: BoxDecoration(
                                      //                 color: Colors.white,
                                      //                 borderRadius: BorderRadius.circular(20)
                                      //             ),
                                      //
                                      //
                                      //             child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      //           children: [
                                      //             tableViewCalender(),
                                      //             Row(
                                      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      //               children: [
                                      //                 customButton(
                                      //                     width: 120,
                                      //                     textColor: CustomColor.primaryButtonColor,
                                      //                     text: 'Cancel',
                                      //                     color: Colors.white,
                                      //                     function: (){
                                      //                       // Cancelcallback();
                                      //                     }
                                      //                 ),   customButton(width: 120,
                                      //
                                      //                     text: 'Set Date',
                                      //                     color: CustomColor.primaryButtonColor,
                                      //                     function: (){
                                      //                       // Yes_callback();
                                      //                     }
                                      //                 ),
                                      //               ],
                                      //             ),
                                      //           ],
                                      //         )),
                                      //       ),
                                      // );
                                    },
                                  );
                                },
                                child: Container(
                                  height: 70,
                                  // width: 60,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      Text(
                                        "Delete",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

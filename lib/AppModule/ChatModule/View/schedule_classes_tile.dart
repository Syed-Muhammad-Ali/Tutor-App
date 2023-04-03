import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/delete_class_view.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/spiner_time_slector.dart';
import 'package:megamind/AppModule/ChatModule/View/coursel_calender.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/funckey_message_popup.dart';

class schedule_class_tile extends StatefulWidget {
  Color color;
  String title;
  Function onDelete;
  Function onPostponed;
  String startTime;
  String endTime;
  int type;

  schedule_class_tile(
      {Key? key,
      required this.color,
      required this.title,
      required this.endTime,
      required this.onDelete,
      required this.onPostponed,
      required this.type,
      required this.startTime})
      : super(key: key);

  @override
  _schedule_class_tileState createState() => _schedule_class_tileState();
}

class _schedule_class_tileState extends State<schedule_class_tile> {
  bool isCHooseNewDateDate = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:
      // !isCHooseNewDateDate
      //     ?
      Container(

              // height: 150,
              // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: widget.color,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                              subHeadingwhite(text: "${widget.title}"),
                              Text(
                                "${widget.startTime}" +
                                    "-" +
                                    "${widget.endTime}",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {

                              if(widget.type==0){
                                widget.onPostponed();
                                // setState(() {
                                //   isCHooseNewDateDate = !isCHooseNewDateDate;
                                // });
                              }else{
                                showDialog(
                                  context: context,
                                  builder: (context) {

                                    ///TODO:set date
                                    return FunkyOverlay(
                                      isTremor: true,
                                      child:
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 20),
                                            child: Container(


                                                height: 400,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(20)
                                                ),


                                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                tableViewCalender( selectedDate: (date){

                                            },startDate: DateTime.now(),),
                                                Row(

                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    customButton(
                                                        width: 120,
                                                        textColor: CustomColor.primaryButtonColor,
                                                        text: 'Cancel',
                                                        color: Colors.white,
                                                        function: (){
                                                          Navigator.pop(context);
                                                          // Cancelcallback();
                                                        }
                                                    ),   customButton(width: 120,

                                                        text: 'Set Date',
                                                        color: CustomColor.primaryButtonColor,
                                                        function: (){
                                                      Navigator.pop(context);
                                                          showDialog(
                                                            context: context,
                                                            builder: (context) {
                                                              return FunkyOverlay(
                                                                  isTremor: true,
                                                                  child: spiner_time_selector(
                                                                      context: context, Yes_callback: (){

                                                                  }, Cancelcallback: (){
                                                                    Navigator.pop(context);
                                                                  })
                                                              );

                                                            },
                                                          );

                                                          // Yes_callback();
                                                        }
                                                    ),
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
                    ],
                  ),
                ),
              ),
            ),
          // : Container(
          //     // height: 150,
          //     // width: MediaQuery.of(context).size.width,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(20),
          //       color: Colors.blue,
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.all(10.0),
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Column(
          //           children: [
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 subHeadingwhite(text: "Pick a Date from calender"),
          //               ],
          //             ),
          //             SizedBox(
          //               height: 15,
          //             ),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 InkWell(
          //                   onTap: () {
          //                     setState(() {
          //                       isCHooseNewDateDate = !isCHooseNewDateDate;
          //                     });
          //                   },
          //                   child: Container(
          //                     height: 70,
          //                     // width: 60,
          //                     child: Column(
          //                       children: [
          //                         Icon(
          //                           Icons.cancel_rounded,
          //                           color: Colors.white,
          //                           size: 30,
          //                         ),
          //                         Text(
          //                           "Cancel",
          //                           style: TextStyle(color: Colors.white),
          //                         )
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
    );
  }
}

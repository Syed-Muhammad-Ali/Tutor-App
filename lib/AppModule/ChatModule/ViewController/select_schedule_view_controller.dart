import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/ChatModule/View/coursel_calender.dart';
import 'package:megamind/AppModule/ChatModule/View/schedule_classes_tile.dart';
import 'package:megamind/AppModule/ChatModule/ViewController/postponed_schedule.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class schedule_selector_view_controller extends StatefulWidget {
  final int type;

  schedule_selector_view_controller({Key? key, required this.type})
      : super(key: key);

  @override
  _schedule_selector_view_controllerState createState() =>
      _schedule_selector_view_controllerState();
}

class _schedule_selector_view_controllerState
    extends State<schedule_selector_view_controller> {
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
                  tableViewCalender(
                    selectedDate: (date) {
                      print(date);
                    },startDate: DateTime.now()
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      subHeadingText(text: "Today's Classes")
                    ],
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: schedule_class_tile(
                            color: Colors.red,
                            type: widget.type,
                            title: "Matchmatics",
                            endTime: "10:20",
                            onDelete: () {},
                            onPostponed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          postponed_schedule_view()));
                            },
                            startTime: "10:00"),
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

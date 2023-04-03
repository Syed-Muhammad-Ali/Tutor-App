import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/ChatModule/View/coursel_calender.dart';
import 'package:megamind/AppModule/NotificationModule/ViewController/notification_view_controller.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeHome/View/invite_friend_tile.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeHome/View/no_post_button.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeHome/View/tutee_home_page_tile.dart';
import 'package:megamind/AppModule/Utlis/ComponentHomeModule/date_time_line.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_bar.dart';

class tutee_home_view_controller extends StatefulWidget {
  const tutee_home_view_controller({Key? key}) : super(key: key);

  @override
  _tutee_home_view_controllerState createState() =>
      _tutee_home_view_controllerState();
}

class _tutee_home_view_controllerState
    extends State<tutee_home_view_controller> {
  bool screen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backGround,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                // color: Colors.blue,
                height: 50,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    GFImageOverlay(
                      image: AssetImage('assets/home/tuteeProfile.png'),
                      height: 50,
                      width: 50,
                      shape: BoxShape.circle,
                    ),
                    Spacer(),
                    Image(
                      image: AssetImage("assets/home/Schedule.png"),
                      height: 25,
                      width: 25,
                      // color: Colors.black,
                      // shape: BoxShape.circle,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationView(),
                            ));
                      },
                      child: Image(
                        image: AssetImage("assets/home/notification.png"),

                        // image: AssetImage("assets/home/notification.png"),
                        height: 25,
                        width: 25,
                        // shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height - 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 150, child: calendar_home(type: 0)),
                    screen
                        ? Expanded(
                          child: Column(
                              children: [
                                NoPostButton(
                                    context: context,
                                    callback: () {
                                      setState(() {
                                        screen = false;
                                      });
                                    }),
                                // Spacer(),
                                // InviteFriendTile(context: context),
                                // SizedBox(
                                //   height: 10,
                                // ),
                              ],
                            ),
                        )
                        : Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              // physics: NeverScrollableScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: tutee_home_tile(),
                                );
                              },
                            ),
                        )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/delete_class_view.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/spiner_time_slector.dart';
import 'package:megamind/AppModule/ChatModule/View/coursel_calender.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/funckey_message_popup.dart';

class tutor_home_tile extends StatefulWidget {
  const tutor_home_tile({Key? key}) : super(key: key);

  @override
  _tutor_home_tileState createState() => _tutor_home_tileState();
}

class _tutor_home_tileState extends State<tutor_home_tile> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      // width:  MediaQuery.of(context).size.width/1.5,
      height: expanded ? 137 : 100,
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
                height: 10,
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

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              subHeadingwhite(text: "${"Mathmetics"}"),
                              Text(
                                "${"Chap 1"}" + "-" + "${"Introduction"}",
                                style: TextStyle(color: Colors.white,fontSize: 12),
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
                                  },
                                  child: Icon(
                                    Icons.arrow_drop_up,
                                    color: Colors.white,
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      expanded = !expanded;
                                    });
                                  },
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      if (expanded)
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GFImageOverlay(
                                shape: BoxShape.circle,
                                height: 20,
                                width: 20,
                                image: AssetImage('assets/onboard/profile.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Clara",
                                style: TextStyle(color: Colors.white,fontSize: 12),
                              )
                            ],
                          ),
                        ),

                      if (expanded)
                        SizedBox(height: 5,),
                      if (expanded)
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GFImageOverlay(
                                shape: BoxShape.circle,
                                height: 20,
                                width: 20,
                                image: AssetImage('assets/onboard/profile.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Clara",
                                style: TextStyle(color: Colors.white,fontSize: 12),
                              )
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

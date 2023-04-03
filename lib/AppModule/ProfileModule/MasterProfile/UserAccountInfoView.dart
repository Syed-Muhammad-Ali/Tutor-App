import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/ProfileModule/TuteeProfileModule/ViewController/tutee_profile_view_controller.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class UserAccountInfoView extends StatefulWidget {
  int type;

  UserAccountInfoView({Key? key, required this.type}) : super(key: key);

  @override
  _UserAccountInfoViewState createState() => _UserAccountInfoViewState();
}

class _UserAccountInfoViewState extends State<UserAccountInfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.teal,
                // image: DecorationImage(
                //   image: AssetImage("assets/home/tuteeProfile.png"),
                //   fit: BoxFit.fill,
                // ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF3298A0),
                        ),
                        child: Center(
                            child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        )),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: (){
                          Get.to(()=>TuteeProfileViewController(type: widget.type),);
                        },
                        child: myText(
                            text: "Edit",
                            color: Colors.white,
                            size: 20,
                            fontweight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height - 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                    // image: DecorationImage(
                    //   image: AssetImage("assets/home/tuteeProfile.png"),
                    //   fit: BoxFit.fill,
                    // ),
                    ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          myText(
                              text: "Ramona Patrick ",
                              color: CustomColor.profileTextColorDark,
                              size: 16,
                              fontweight: FontWeight.w500),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                            size: 15,
                          )
                        ],
                      ),

                      SizedBox(
                        height: 5,
                      ),
                      myText(
                          text: "Ramona Patrick ",
                          color: CustomColor.profileTextColor,
                          size: 14,
                          fontweight: FontWeight.w500),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height:20,
                            width:20,
                            color: CustomColor.backGround,
                            child: Center(
                              child: Icon(
                                Icons.check_circle,
                                color: Colors.blue,
                                size: 15,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          myText(
                              text: "Education",
                              color: CustomColor.profileTextColorDark,
                              size: 16,
                              fontweight: FontWeight.w500),


                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/MessageTile.dart';
import 'package:megamind/AppModule/ChatModule/ViewController/ChatScreen.dart';
import 'package:megamind/AppModule/ChatModule/ViewModel/ChatViewModel.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

import 'package:uuid/uuid.dart';

class InboxViewController extends StatelessWidget {
  final int userType;
  InboxViewController({Key? key,required this.userType}) : super(key: key);
  final controller = Get.put(ChatViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: AppConfig(context).height,
        width: AppConfig(context).width,
        color: Colors.white,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: 30,),
          Text(
            "Chats",style: const TextStyle(
            color: CustomColor.profileTextColorDark,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
            textAlign: TextAlign.center,
          ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: AppConfig(context).width-50,
                height: 50,
                child: TextFormField (

                  // cursorColor: AppColor().primaryColor,
                  decoration: InputDecoration(
                      filled: true,
                      contentPadding: EdgeInsets.only(top: 5,bottom: 10),
                      fillColor:Color.fromRGBO(82, 89, 105, 0.05),
                      prefixIcon: Icon(Icons.search,color: CustomColor.profileTextColor, size: 25,),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      enabledBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      errorBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      disabledBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      hintText: 'Search Message'.tr,
                    hintStyle: TextStyle(
                  color: CustomColor.profileTextColor,

                    )
                  ),
                  onChanged: (value){
                    // controller.onSearchTile(value);

                  },
                ),
              ),
              SizedBox(height: 15,),
              Divider(color: Color.fromRGBO(223, 227, 236, 0.64),),

              Container(
                  height: AppConfig(context).height / 1.25,
                  width: AppConfig(context).width,
                  color: Colors.white,
                  child: ListView.builder(
                      // shrinkWrap: true,
                      itemCount: 15,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 0, bottom: 15),
                          child: inboxListTile(

                            profile: i%2==0?"assets/home/tuteeProfile.png":"assets/home/tutorProfile.png",
                            title: i==0?"Numan Shakir":"Tamoor",
                            context: context,
                            onCallBack: () {
                              Get.to(() => ChatScreen(
                                type: userType,
                                    isMe: i == 0,
                                controller: controller,
                                  ));
                              // Get.to(()=>MessageAndRecord());
                            },
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}


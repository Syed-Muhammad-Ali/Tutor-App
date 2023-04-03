import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/MessageBubble.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/RecordingMessage.dart';
import 'package:megamind/AppModule/ChatModule/Model/ChatModel.dart';
import 'package:megamind/AppModule/ChatModule/ViewController/select_schedule_view_controller.dart';
import 'package:megamind/AppModule/ChatModule/ViewModel/ChatViewModel.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ChatScreen extends StatefulWidget {
 final bool isMe;
 final int type;
 final ChatViewModel controller;

  ChatScreen({required this.isMe,required this.controller,required this.type});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {


  String messageText = "", sender = "";
  Color colour = Colors.white;
  Icon darkModeIcon = Icon(Icons.lightbulb_outline);

  bool senderP = false;
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // @override
  // void dispose() {
  //   animationController!.dispose();
  //   super.dispose();
  // }
  scrollToIndexAnimation(int index){
    itemScrollController.scrollTo(
        index: index,
        duration: Duration(milliseconds: 500),
        curve: Curves.linear);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // appBar: PreferredSize(child: AppBar(
       //   backgroundColor: Colors.white,
       //   leading
       // ), preferredSize: Size(MediaQuery.of(context).size.width,50)),
      backgroundColor: Color(0xFFFCFCFF),
      body: Container(
          height: AppConfig(context).height,
          width: AppConfig(context).width,
          child: Column(
            children: [
              SizedBox(height: 40,),
              Container(
                // color: Colors.blue,
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                  InkWell(onTap: () => Navigator.pop(context),child: Icon(Icons.arrow_back_rounded,color: CustomColor.primaryButtonColor,)),
                    SizedBox(width: 20,),
                    GFImageOverlay(
                      height: 32,
                      width: 32,
                      shape: BoxShape.circle,
                      color: Colors.green,
                      image: AssetImage('assets/home/tutorProfile.png'),

                    ),
                    SizedBox(width: 10,),
                Text(
                  "Numan",style: const TextStyle(
                  color: Color(0xFF31394F),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
                ),
                  Spacer(),
                  InkWell(child:Image(image: AssetImage('assets/chat/Call.png'),width: 19,height: 19,)),
                    SizedBox(width: 10,),
                    InkWell(onTap:  () {
Navigator.push(context, MaterialPageRoute(builder: (context) => schedule_selector_view_controller(type: widget.type,),));

                    },child: Image(image: AssetImage('assets/chat/schedule.png'),width: 19,height: 19,)),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              Divider(color: Colors.grey,),

              Expanded(
                child: Obx(
                  () => ScrollablePositionedList.builder(
                    itemScrollController: itemScrollController,
                    itemPositionsListener: itemPositionsListener,
                    // shrinkWrap: true,
                    itemCount: widget.controller.messagesList.length,
                    itemBuilder: (context, index) {
                      return
                        MsgBubble(
                        chatModel:  widget.controller.messagesList[index],
                      );
                      //   SizeTransition(
                      //   sizeFactor: new CurvedAnimation(
                      //       parent: AnimationController(
                      //         duration: new Duration(milliseconds: 700),
                      //         vsync: this,
                      //       ), curve: Curves.easeOut),
                      //   axisAlignment: 0.0,
                      //   child: MsgBubble(
                      //     chatModel:controller.messagesList[index] ,
                      //
                      //
                      // ),
                      // );
                    },
                  ),
                ),
              ),
              chat_text_field(
                controller: widget. controller,
                // onStop: (path) {
                //   print(path);
                // },
                // onSendVoice: (path) {
                //   print("video Message send");
                //   widget. controller.messagesList.add(ChatModel(
                //       smsTime: DateTime.now(),
                //       text: "${ widget.controller.textController.text}",
                //       isMe: widget.isMe,
                //       isText: false,
                //       isRecord: true,
                //       recordPath: "${path}",
                //       imagePath:
                //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7fku6lB9-iC8Xec61L1KJ3rSDURYtLD3KZsGY8ITCg4oO0u_JAOH_zsAeveHhQhfTz1M&usqp=CAU",
                //       isImage: false));
                //   print(path);
                //   scrollToIndexAnimation( widget.controller.messagesList.length);
                // },
                // onSendImage: (path) {
                //
                //   print("image Message send");
                //   widget.controller.messagesList.add(ChatModel(
                //       smsTime: DateTime.now(),
                //       text: "${ widget.controller.textController.text}",
                //       isMe: widget.isMe,
                //       isText: false,
                //       isRecord: false,
                //       recordPath: "",
                //       imagePath:"${path}",
                //       // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7fku6lB9-iC8Xec61L1KJ3rSDURYtLD3KZsGY8ITCg4oO0u_JAOH_zsAeveHhQhfTz1M&usqp=CAU",
                //       isImage: true));
                //   print(path);
                //   scrollToIndexAnimation( widget.controller.messagesList.length);
                // },

                onSendText:  (message) {
                  print("Text Message send");
                  widget.controller.messagesList.add(ChatModel(
                      smsTime: DateTime.now(),
                      text: "${ widget.controller.textController.text}",
                  isMe: widget.isMe,
                      isText: true,
                       isRecord: false,
                      recordPath: "",
                      imagePath:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7fku6lB9-iC8Xec61L1KJ3rSDURYtLD3KZsGY8ITCg4oO0u_JAOH_zsAeveHhQhfTz1M&usqp=CAU",
                      isImage: false));
                  scrollToIndexAnimation( widget.controller.messagesList.length);
                },
              ),
              SizedBox(
                height: 5,
              ),
              // Expanded(child: MessageAndRecord()),
            ],
          )),
    );
  }
}

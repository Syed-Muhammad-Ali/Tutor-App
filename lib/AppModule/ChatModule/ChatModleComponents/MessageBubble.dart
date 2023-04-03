import 'dart:io';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:calender_picker/extra/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:getwidget/getwidget.dart';
import 'package:just_audio/just_audio.dart';
import 'package:megamind/AppModule/ChatModule/ChatModleComponents/Voice/VoiceMessage.dart';
import 'package:megamind/AppModule/ChatModule/Model/ChatModel.dart';
import 'package:megamind/AppModule/ChatModule/ViewController/ImageFullView.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';

class MsgBubble extends StatelessWidget {
  final ChatModel chatModel;

  MsgBubble({required this.chatModel});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Row(
          mainAxisAlignment: chatModel.isMe == true
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: <Widget>[
            if (!chatModel.isMe)
              SizedBox(
                  height: 32,
                  width: 32,
                  child: Image(
                    image: AssetImage('assets/home/tutorProfile.png'),
                  )),
            if (!chatModel.isMe)
              SizedBox(
                width: 10,
              ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: chatModel.isMe?CrossAxisAlignment. end:CrossAxisAlignment.start,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(10),

                  color:
                      chatModel.isMe == true ? Color(0xFF2354D7) : Colors.white,
                  elevation: 0.5,
                  shadowColor: Colors.black,

                  child: InkWell(
                    onLongPress: () {
                      // print(MediaQuery.of(context).viewInsets.top);
                      Clipboard.setData(ClipboardData(text: chatModel.text));
                      // if(FocusNode().hasFocus)
                      GFToast.showToast("Text Copied!", context,
                          toastPosition: GFToastPosition.CENTER);
                      // else
                      //   GFToast.showToast("Text Copied!", context,toastPosition:GFToastPosition.BOTTOM);
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                      child: Text(
                        '${chatModel.text}',
                        style: TextStyle(fontSize: 14.0,color:  chatModel.isMe == true ? Colors.white:Color(0xFF31394F) ,),
                      ),
                    ),
                  ),
                  // Stack(
                  //   alignment: Alignment.center,
                  //   children: [
                  // chatModel.isRecord?
                  // VoiceMessage(chatModel: chatModel,):
                  // chatModel.isImage?
                  // imageMessage(chatModel: chatModel):

                  // Positioned(
                  //   bottom: 0,
                  //   right: 3,
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(5),
                  //     child: Text(
                  //       '${chatModel.smsTime.hour}' +
                  //           ":" +
                  //           "${chatModel.smsTime.minute}",
                  //       style: TextStyle(fontSize: 10.0),
                  //     ),
                  //   ),
                  // ),
                  //   ],
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Row(
                    children: [
                      if(!chatModel.isMe)
                        Icon(Icons.check_rounded,color: Colors.grey,size: 20,),
                      if(!chatModel.isMe)
                      SizedBox(width: 2,),
                      Text(
                        '${chatModel.smsTime.hour}' +
                            ":" +
                            "${chatModel.smsTime.minute} pm",
                        style: TextStyle(fontSize: 10.0,color: CustomColor.profileTextColor),
                      ),
                      if(chatModel.isMe)
                      SizedBox(width: 2,),
                      if(chatModel.isMe)
                      Icon(Icons.check_rounded,color: Colors.grey,size: 20,),

                    ],
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}

// Widget imageMessage({ required ChatModel chatModel}) {
//   return InkWell(
//     onTap: (){
//       Get.to(()=>FullImageView(imageFile: File(chatModel.imagePath)),curve: Curves.bounceInOut);
//     },
//     child: Padding(
//       padding: const EdgeInsets.all(3.0),
//       child: ClipRRect(
//         borderRadius: chatModel.isMe == true
//             ? BorderRadius.only(
//             topLeft: Radius.circular(15.0),
//             bottomLeft: Radius.circular(15.0),
//             bottomRight: Radius.circular(15.0))
//             : BorderRadius.only(
//             topRight: Radius.circular(15.0),
//             bottomLeft: Radius.circular(15.0),
//             bottomRight: Radius.circular(15.0)),
//         child: Container(
//           height: 250,
//           width: 200,
//
//           child: Image(
//               image:FileImage(File(chatModel.imagePath)),
//               fit: BoxFit.cover,
//               // NetworkImage(
//               //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7fku6lB9-iC8Xec61L1KJ3rSDURYtLD3KZsGY8ITCg4oO0u_JAOH_zsAeveHhQhfTz1M&usqp=CAU"),
//           ),
//         ),
//       ),
//     ),
//   );
// }
//

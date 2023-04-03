import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/ChatModule/Model/ChatModel.dart';



class ChatViewModel extends GetxController {
  final textController = TextEditingController();
  var messagesList = [
    ChatModel(
      smsTime: DateTime.now(),
      text:
          "Hi Tamoor",
      isMe: true,
      isText: true,
    ),
    // ChatModel(
    //     smsTime: DateTime.now(),
    //     text: "Hello",
    //     isMe: false,
    //     isText: false,
    //     imagePath:
    //         "/data/user/0/com.builtinsoft.rideshare.rideshare/cache/image_picker5293905604462666814.png",
    //     // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7fku6lB9-iC8Xec61L1KJ3rSDURYtLD3KZsGY8ITCg4oO0u_JAOH_zsAeveHhQhfTz1M&usqp=CAU",
    //     isImage: true),
    // ChatModel(
    //     smsTime: DateTime.now(),
    //     text: "Hello",
    //     isMe: false,
    //     isText: false,
    //     imagePath:
    //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7fku6lB9-iC8Xec61L1KJ3rSDURYtLD3KZsGY8ITCg4oO0u_JAOH_zsAeveHhQhfTz1M&usqp=CAU",
    //     isImage: false,
    //     isRecord: true,
    //     recordPath: "/data/user/0/com.builtinsoft.rideshare.rideshare/cache/audio3192164440681098145.m4a"),
    // ChatModel(
    //   smsTime: DateTime.now(),
    //   text: "Hello",
    //   isMe: false,
    //   isText: true,
    // ),
    // ChatModel(
    //     smsTime: DateTime.now(),
    //     text: "Hello",
    //     isMe: true,
    //     isText: false,
    //     imagePath:
    //         "/data/user/0/com.builtinsoft.rideshare.rideshare/cache/image_picker5293905604462666814.png",
    //     // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7fku6lB9-iC8Xec61L1KJ3rSDURYtLD3KZsGY8ITCg4oO0u_JAOH_zsAeveHhQhfTz1M&usqp=CAU",
    //     isImage: true),
    // ChatModel(
    //     smsTime: DateTime.now(),
    //     text: "Hello",
    //     isMe: true,
    //     isText: false,
    //     imagePath:
    //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7fku6lB9-iC8Xec61L1KJ3rSDURYtLD3KZsGY8ITCg4oO0u_JAOH_zsAeveHhQhfTz1M&usqp=CAU",
    //     isImage: false,
    //     isRecord: true,
    //     recordPath: "/data/user/0/com.builtinsoft.rideshare.rideshare/cache/audio3192164440681098145.m4a"),
  ].obs;
}

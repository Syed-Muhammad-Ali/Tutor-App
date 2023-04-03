class ChatModel {
  bool isText;
  bool isImage;
  bool isRecord;
  String text;
  String imagePath;
  String recordPath;
 DateTime smsTime;
  bool isMe;

  ChatModel(
      {this.text = "",
      this.imagePath = "",
      this.isImage = false,
      this.isMe = false,
      this.isRecord = false,
      this.isText = false,
      this.recordPath = "",
     required this.smsTime });

}

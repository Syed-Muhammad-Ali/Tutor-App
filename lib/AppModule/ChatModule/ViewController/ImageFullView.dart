import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:photo_view/photo_view.dart';

class FullImageView extends StatelessWidget {
  final File imageFile;
  FullImageView({
   required this.imageFile,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(
          backgroundColor:Colors.green,
          title: Text("Image Preview"),
        ),
        body: Container(
      width: AppConfig(context).width,
      height: AppConfig(context).height,
      child: PhotoView(

        imageProvider:FileImage(imageFile),
      basePosition: Alignment.center, customSize: Size(AppConfig(context).width, AppConfig(context).height,),),
    ));
  }
}


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';

import 'custom_image_picker.dart';

Widget imagePreView(
    {required BuildContext context, var image, var controller}) {
  return SizedBox(
    child: Stack(
      children: [
        // Container(
        //     height: 130,
        //     width: 130,
        //     decoration: BoxDecoration(
        //       color:CustomColor.primaryButtonColor,
        //       borderRadius: BorderRadius.circular(90),
        //     )),
        GestureDetector(
            onTap: () {
              CustomImagePicker().showPicker(
                  context: context,
                  onGetImage: (image) {
                    controller.image.value = image;
                  });
            },
            child: image != ""
                ? ClipRRect(
                borderRadius: BorderRadius.circular(75.0),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75.0),
                  ),
                  child: Image.file(
                    File(image),
                    fit: BoxFit.cover,
                  ),
                ))
                : Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                image:const DecorationImage(image: AssetImage('assets/onboard/profile.png'),fit: BoxFit.cover),
              ),

            )),
        Positioned(
         top: 3,
          right: 4,
          child: GestureDetector(
            onTap: () {
              CustomImagePicker().showPicker(
                  context: context,
                  onGetImage: (image) {
                    controller.image.value = image;
                  });
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color:CustomColor.primaryButtonColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

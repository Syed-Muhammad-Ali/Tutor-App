import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget dotSelector({required BuildContext context, required int value}) {
  return SizedBox(
      height: 30,
      width: AppConfig(context).width,
      child: value == 1
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.album_outlined,
                  color: Colors.blue,
                  size:  15,
                ),
                 SizedBox(width: 3,),
                Icon(
                  Icons.album_outlined,
                  color: Colors.grey,
                  size: 10,
                ),
                SizedBox(width: 3,),
                Icon(
                  Icons.album_outlined,
                  color: Colors.grey,
                  size: 10,
                ),
              ],
            )
          : value == 2
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.album_outlined,
                      color: Colors.grey,
                      size: 10,
                    ),
                    Icon(
                      Icons.album_outlined,
                      color: Colors.blue,
                      size:  15,
                    ),
                    SizedBox(width: 3,),
                    Icon(
                      Icons.album_outlined,
                      color: Colors.grey,
                      size: 10,
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.album_outlined,
                      color: Colors.grey,
                      size: 10,
                    ),
                    SizedBox(width: 3,),
                    Icon(
                      Icons.album_outlined,
                      color: Colors.grey,
                      size: 10,
                    ),
                    SizedBox(width: 3,),
                    Icon(
                      Icons.album_outlined,
                      color: Colors.blue,
                      size:  15,
                    ),
                  ],
                ));
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';

Widget giftCard(){
  return Container(

    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey,
        width: 1,
      )
    ),
    child: Column(
      children: [
        customText(text: 'Invite a Friend', fontSize: 12),

      ],
    ),

  );
}
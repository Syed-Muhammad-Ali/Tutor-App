import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class jobs_tile extends StatelessWidget {
  bool isCompleted;
  Function callback;
   jobs_tile({Key? key,required this.isCompleted,required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          callback();
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade300,blurRadius: 1),
            ]
          ),

          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mathematics",style: const TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
                ),
                simpleTextGrey(text: "primary"),
                Row(
                  children: [
                isCompleted?
                    simpleTextGrey(text: "Last CLass"):
                    simpleTextGrey(text: "Next CLass"),
                    SizedBox(width: 20,),

          Text(
            "12:40-12:50",style: const TextStyle(
            color: CustomColor.profileTextColorDark,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
          ),
                  ],
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}

import 'package:calender_picker/extra/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class title_check_box extends StatefulWidget {
  String title;
  Function callback;
  bool ischeck ;
  title_check_box({required this.title,required this.callback,this.ischeck=false});

  @override
  State<title_check_box> createState() => _title_check_boxState();
}

class _title_check_boxState extends State<title_check_box> {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            activeColor: AppColors.defaultDateColor,
            checkColor: Colors.orange,
            value: widget.ischeck,
            onChanged: (value) {

              widget.callback( widget.ischeck);

            }),
        Text(
          "${widget.title}",
          style: TextStyle(
              fontSize: 12,
              color: AppColors.defaultDateColor,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
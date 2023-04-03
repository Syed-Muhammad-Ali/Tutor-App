import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class icon_Field extends StatefulWidget {
  final double width;
  final IconData iconData;
  final title;
  Function callback;
  bool isCalenderIcon;
  Color color;

  icon_Field(
      {Key? key,
      required this.iconData,
      required this.width,
      required this.callback,
      this.isCalenderIcon = false,
      required this.title,
      this.color=const Color(0xFFE5E5E5)})
      : super(key: key);

  @override
  _icon_FieldState createState() => _icon_FieldState();
}

class _icon_FieldState extends State<icon_Field> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.callback();
      },
      child: Container(
        width: widget.width,
        height: 58,
        decoration: BoxDecoration(
          color:widget.color,

          // color: Colors.white,
          border: Border.all(
            color: CustomColor.textFieldBorderColor,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right:20,top: 2,bottom: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${widget.title}",
                style: const TextStyle(
                  color: CustomColor.profileTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),

              widget.isCalenderIcon
                  ? Image(
                      image: AssetImage(
                        "assets/home/Schedule.png",
                      ),
                      height: 30,
                      color: CustomColor.profileTextColor,
                    )
                  : Icon(widget.iconData,color: CustomColor.profileTextColor,),

            ],
          ),
        ),
      ),
    );
  }
}

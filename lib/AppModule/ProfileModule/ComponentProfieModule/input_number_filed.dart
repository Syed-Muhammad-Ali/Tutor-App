

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class InputField extends StatefulWidget {
  final TextEditingController ?controller;
  final String hint;
  final double ?width;
  final int maxLines;
  final double ?height;
  final bool isPass;
  final bool isProduct;
  final String errorText;

  final Color backcolor;
  final Color bordercolor;
  final TextInputType textInputType;

  final Function onchange;

  InputField({
    this.isProduct = false,
    this.bordercolor = Colors.grey,
    required this.backcolor,
    this.maxLines=1,
    this.width,
    this.height,
    this.errorText = "",
    this.textInputType = TextInputType.text,
    Key ?key,
    this.controller,
    required this.hint,
    this.isPass = false,
    required this.onchange,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool showpass = false;

  @override
  void initState() {
    super.initState();
    if (widget.isPass) {
      showpass = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey,
        )
      ),
      child: TextFormField(

        autofocus: false,
        maxLines: widget.maxLines,
        inputFormatters: [
          widget.isPass
              ? LengthLimitingTextInputFormatter(4)
              : LengthLimitingTextInputFormatter(500),
        ],
        keyboardType: widget.textInputType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        // The validator receives the text that the user has entered.

        validator:
        // widget.isProduct
        //     ? (value) {
        //         // if (value == null || value.isEmpty) {
        //         //   return widget.errorText;
        //         // }
        //         return null;
        //       }
        //     :
            (value) {
          if (value == null || value.isEmpty) {
            return widget.errorText;
          }
          return null;
        },
        style: TextStyle(
          fontSize: widget.isProduct ? 13 : 15,
        ),
        onChanged: (v){
          widget.onchange(v);

        },
        cursorColor: Colors.grey,
        controller: widget.controller ?? TextEditingController(),
        obscureText: showpass,
        decoration: InputDecoration(
          suffixIcon: widget.isPass
              ? Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  showpass = !showpass;
                });
              },
              child: showpass
                  ? Container(
                width: 30,
                height: 30,
                child: Image(
                  image: AssetImage("assets/auth/closeeye.png"),
                  height: 20,
                  color: Colors.grey,
                ),
              )
                  : Container(
                width: 30,
                height: 30,
                child: Image(
                  image: AssetImage("assets/auth/openeye.png"),
                  color: Colors.grey,
                  height: 10,
                ),
              ),
            ),
          )
              : const SizedBox(),

          suffixIconConstraints: BoxConstraints(
              maxWidth: 50, maxHeight: 30, minHeight: 30, minWidth: 30),
          // disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
            // borderRadius: BorderRadius.only(
            //   topRight: Radius.elliptical(120, 120),
            // ),


          focusedErrorBorder: InputBorder.none,
            // borderRadius: BorderRadius.only(
            //   topRight: Radius.elliptical(120, 120),
            // ),
          contentPadding:const EdgeInsets.only(left: 20,top: 15,bottom: 15),
          fillColor: Colors.grey,
          hintText: widget.hint,
          focusedBorder: InputBorder.none,
            // borderRadius: BorderRadius.only(
            //   topRight: Radius.elliptical(120, 120),
            // ),
          enabledBorder: InputBorder.none,
            // borderRadius: BorderRadius.only(
            //   topRight: Radius.elliptical(120, 120),
            // ),
          ),
        ),
    );
  }
}

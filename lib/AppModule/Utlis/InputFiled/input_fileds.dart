import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class input_field extends StatelessWidget {
  String errorMessage;
  String hint;
  FocusNode focusNode;
  Function onChange;
  TextInputType keyboard;
  double height;
  bool isCustom;
  int maxline;
  double width;
  input_field(
      {required this.errorMessage, this.height=80,this.isCustom=true, this.width=300, this.maxline=1, required this.focusNode,required this.onChange,required this.hint,required this.keyboard});

  @override
  Widget build(BuildContext context) {
    return isCustom?SizedBox(
      width: width,
      height:height ,
      child: TextFormField(
maxLines: maxline,
        keyboardType: keyboard,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          fillColor:Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          hintText: '${hint}',
          errorText: this.errorMessage,
          hintStyle: TextStyle(color:Colors.grey, fontSize: 16),
        ),
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
        cursorColor: Colors.grey,
        focusNode: this.focusNode,
        onChanged: (value) {
          onChange(value);
        },
      ),
    ): SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        maxLines: maxline,
        keyboardType: keyboard,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          fillColor:Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          hintText: '${hint}',
          errorText: this.errorMessage,
          hintStyle: TextStyle(color:Colors.grey, fontSize: 16),
        ),
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
        cursorColor: Colors.grey,
        focusNode: this.focusNode,
        onChanged: (value) {
          onChange(value);
        },
      ),
    );
  }
}

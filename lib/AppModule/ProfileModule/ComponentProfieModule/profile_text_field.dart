import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class ProfileTextField extends StatefulWidget {
  final bool isPass;
  final String title;
  final String title2;
  Callback ? callback;
  final double width;
  ProfileTextField({Key? key,required this.isPass,required this.title,required this.title2,this.callback,required this.width}) : super(key: key);

  @override
  _ProfileTextFieldState createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
    if (widget.isPass) {
      _showPassword = true;
    }
  }
  @override
  Widget build(BuildContext context) {
    FocusNode focusNode = FocusNode();
    return SizedBox(
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title,style:const TextStyle(color:Colors.grey,fontSize: 15,),),

              InkWell(
                onTap: widget.callback,
                  child: Text(widget.title2,style:const TextStyle(color:CustomColor.primaryButtonColor,fontSize: 15,),))
            ],
          ),

          TextFormField(
            obscureText: _showPassword,
            focusNode: focusNode,
            cursorColor:CustomColor.backGround,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide:const BorderSide(
                  width: 1,
                  color: Colors.grey,

                ),

              ),
                border:OutlineInputBorder(

                    borderRadius: BorderRadius.circular(16.0),
                    borderSide:const BorderSide(
                      width: 1,
                      color: CustomColor.primaryButtonColor,

                    ),
                ),
                suffixIcon: widget.isPass ? GestureDetector(
                  onTap: () {
                    setState(() {
                      focusNode.unfocus();
                      focusNode.canRequestFocus = false;
                      _showPassword = !_showPassword;
                    });
                  },
                  child:Icon(
                    _showPassword?Icons.visibility:Icons.visibility_off,
                    color: Colors.grey,
                  ),
                ):const SizedBox(),
                filled: true,
                fillColor: CustomColor.backGround,
                contentPadding:const EdgeInsets.only(left: 20,top: 15,bottom: 15),
              focusColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

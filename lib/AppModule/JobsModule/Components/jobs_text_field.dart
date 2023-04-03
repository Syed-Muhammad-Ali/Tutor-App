import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class jobs_text_field extends StatefulWidget {
  final bool isPass;
  final bool readOnly;
  final String title;
  // final String title2;
  final double width;
  Callback ? callback;
 VoidCallback ? onTab;
  jobs_text_field({Key? key,required this.isPass,required this.title, required this.width,this.callback,this.readOnly=false,this.onTab}) : super(key: key);

  @override
  _jobs_text_fieldState createState() => _jobs_text_fieldState();
}

class _jobs_text_fieldState extends State<jobs_text_field> {
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
      child: TextFormField(

readOnly: widget.readOnly,
        onTap: (){
  print("on tab");
          widget.onTab;
        },
        obscureText: _showPassword,
        focusNode: focusNode,
        // cursorColor:CustomColor.backGround,
        decoration: InputDecoration(
          hintText: "${widget.title}",
          hintStyle: TextStyle(color:CustomColor.profileTextColor),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              width: 1,
              color: CustomColor.textFieldBorderColor,

            ),

          ),
          disabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(0.5),

            ),

          ),
           errorBorder:  OutlineInputBorder(
             borderRadius: BorderRadius.circular(16.0),
             borderSide: BorderSide(
               width: 1,
               color: Colors.grey.withOpacity(0.5),

             ),

           ),
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(0.5),

            ),

          ),

          border:OutlineInputBorder(

            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(0.5),

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
            child: Icon(
             Icons.keyboard_arrow_down_sharp,
              color: Colors.grey,
            ),
          ):const SizedBox(),
          filled: true,
          fillColor: Colors.white,
          contentPadding:const EdgeInsets.only(left: 20,top: 15,bottom: 15),
          // focusColor: Colors.grey,
        ),
      ),
    );
  }
}

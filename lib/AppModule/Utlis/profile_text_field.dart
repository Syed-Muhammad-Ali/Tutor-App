import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class ProfileTextField extends StatefulWidget {
  final bool isPass;
  final bool isTitle;
  final String title;
  final String title2;
  final double width;
  Callback ? callback;
  Callback ? callback2ndTitle;
  ProfileTextField({Key? key,required this.isPass,this.isTitle=true,this.callback2ndTitle,required this.width,required this.title,required this.title2,this.callback}) : super(key: key);

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
          if(widget.isTitle)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title,style:const TextStyle(color:CustomColor.profileTextColor,fontSize: 15,),),

              InkWell(
                onTap: widget.callback2ndTitle,
                  child: Text(widget.title2,style:const TextStyle(color:CustomColor.primaryButtonColor,fontSize: 14,),))
            ],
          ),
          if(widget.isTitle)
          SizedBox(height: 5,),
          SizedBox(
            height: 58,
            child: TextFormField(
              obscureText: _showPassword,
              focusNode: focusNode,
              cursorColor:CustomColor.backGround,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),

                  borderSide:BorderSide(
                    width: 1,
                    color: Colors.grey..withOpacity(0.4),

                  ),

                ),
                  border:OutlineInputBorder(

                      borderRadius: BorderRadius.circular(16.0),
                      borderSide:BorderSide(
                        width: 1,
                        color: CustomColor.textFieldBorderColor,
                        // color: CustomColor.primaryButtonColor,

                      ),
                  ),
                  enabledBorder: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(16.0),
                    borderSide:BorderSide(
                      width: 1,
                      color:   CustomColor.textFieldBorderColor,
                      // color: CustomColor.primaryButtonColor,

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
                    child:_showPassword?Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage("assets/icon/Show.png"),height: 15,width: 15,),
                    ):Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage("assets/icon/Hide.png"),height: 15,width: 15,),
                    )
                    // Icon(
                    //   _showPassword?Icons.visibility:Icons.visibility_off,
                    //   color: Colors.grey,
                    // ),
                  ):const SizedBox(),
                  filled: true,
                  fillColor: CustomColor.backGround,
                  contentPadding:const EdgeInsets.only(left: 20,top: 15,bottom: 15),
                focusColor: Colors.grey,
              ),
            ),
          ),
        ],

      ),
    );
  }
}

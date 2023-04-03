import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

Widget selectionButton({required BuildContext context,required String dropDown,required Function function}) {

  return Container(
      width: AppConfig(context).width,
      height: 60,
      decoration: BoxDecoration(
        color: CustomColor.backGround,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 2),
        child: DropdownButton(
          icon:const Image(image:AssetImage('assets/icon/arrow.png'),height: 20,width: 20 ,),

          underline:Container(color: Colors.transparent,) ,
          hint: dropDown == ""
              ? const Text('Gender',style: TextStyle(color:Colors.grey,fontSize: 15,),)
              : Text(
                  dropDown,
            style:const TextStyle(color:Colors.black,fontSize: 15,),

                ),
          isExpanded: true,
          iconSize: 30.0,
          style:const  TextStyle(color: Colors.grey),
          items: ['Men','Women','Other'].map(
            (val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val),

              );
            },
          ).toList(),
          onChanged: (dropDown) {
            function(dropDown);
          },
        ),
      ));
}

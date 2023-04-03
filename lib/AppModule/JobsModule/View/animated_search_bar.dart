import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';

class animated_search_bar extends StatefulWidget {
  const animated_search_bar({Key? key}) : super(key: key);

  @override
  _animated_search_barState createState() => _animated_search_barState();
}

class _animated_search_barState extends State<animated_search_bar> {
  bool selected=false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(

      width:  selected ? MediaQuery.of(context).size.width/1.5 : 30.0,
      height: 80,
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          if(!selected)
          InkWell(onTap: () {
            setState(() {
              selected=!selected;
            });
          },child: Icon(Icons.search,color:  CustomColor.primaryButtonColor,size: 25,)),
          if(selected)
            Expanded(
              child: TextFormField (

                // cursorColor: AppColor().primaryColor,
                decoration: InputDecoration(
                    filled: true,
                    fillColor:CustomColor.backcolor,
                    prefixIcon: Icon(Icons.search,color: Colors.grey, size: 25,),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(25)
                    ),
                    enabledBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    errorBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    disabledBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: 'Search Job',
                ),
                onChanged: (value){
                  // controller.onSearchTile(value);

                },
              ),
            ),
          if(selected)
          InkWell(onTap: () {
            setState(() {
              selected=!selected;
            });
          },child: Icon(Icons.clear,color: CustomColor.primaryButtonColor,)),
        ],
      ),
    );
  }
}

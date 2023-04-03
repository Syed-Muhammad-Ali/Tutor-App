import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class jobs_search_filter_view_controller extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      child: Column(
        children: [

          SizedBox(height: 40,),
          Container(
            // color: Colors.blue,
            height: 50,
            child: Row(
              children: [
                SizedBox(width: 20,),
                InkWell(onTap: () => Navigator.pop(context),child: Icon(Icons.arrow_back_rounded,color: Colors.blue,)),
                Spacer(),
                SizedBox(width: 10,),
                simpleTitleText(text: "Jobs"),
                Spacer(),
                InkWell(child: Icon(Icons.workspaces_filled,color: Colors.blue,)),
                SizedBox(width: 20,),

              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: AppConfig(context).width-50,
            height: 50,
            child: TextFormField (

              // cursorColor: AppColor().primaryColor,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF2F1F2),
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
                  hintText: 'Search Message',
              ),
              onChanged: (value){
                // controller.onSearchTile(value);

              },
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 30,),
              simpleTitleText(text: "Top Results"),
            ],
          ),
        ],
      ),
    ));
  }
}

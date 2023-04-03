import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class app_bar extends StatelessWidget {
  String title;
  bool isIcon;
  bool isTitle;
 app_bar({Key? key,this.isIcon=true,this.isTitle=true,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        // color: Colors.blue,
        height: 50,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            if(isIcon)
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.blue,
                )),
            SizedBox(
              width: 20,
            ),
            if(isTitle)
            simpleTitleText(text: "${title}")
          ],
        ),
      ),
    );
  }
}

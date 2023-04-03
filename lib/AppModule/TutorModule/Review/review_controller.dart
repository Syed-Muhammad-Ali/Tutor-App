import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/InputFiled/input_fileds.dart';
import 'package:megamind/AppModule/Utlis/app_bar.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class ReviewViewController extends StatefulWidget {
  const ReviewViewController({Key? key}) : super(key: key);

  @override
  _ReviewViewControllerState createState() => _ReviewViewControllerState();
}

class _ReviewViewControllerState extends State<ReviewViewController> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              app_bar(title: 'Review',isIcon: true,),
              Image(
                image: const AssetImage('assets/error/image.png'),
                height: AppConfig(context).height / 3,
                width: AppConfig(context).width-100,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: CustomColor.primaryButtonColor,
                    child: Center(child: Text("1",style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(width: 10,),
                  customText(
                      text: "How's the tutor?", fontSize: 15, fontWeight: FontWeight.bold),
                ],
              ),
              SizedBox(width: 10,),
            SizedBox(height: 50,
                child: ListView.builder(shrinkWrap: true,itemCount: 5,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex=index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.camera,color:currentIndex==index? CustomColor.primaryButtonColor:Colors.grey,size: 25,),
                    ),
                  );
                },),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: CustomColor.primaryButtonColor,
                    child: Center(child: Text("1",style: TextStyle(color: Colors.white),)),
                  ),

                  SizedBox(width: 10,),
                  customText(
                      text: "Give us Review about tutor?", fontSize: 15, fontWeight: FontWeight.bold),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              input_field(maxline: 5,errorMessage: "", focusNode: FocusNode(), onChange: (){}, hint: "Write your experience", keyboard: TextInputType.text,isCustom: false,),
              const SizedBox(
                height: 10,
              ),
              customButton(
                  width: AppConfig(context).width -80,
                  text: 'Done',
                  color: CustomColor.primaryButtonColor,
                  function: (){
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

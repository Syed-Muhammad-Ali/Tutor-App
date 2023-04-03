import 'package:flutter/material.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: AppConfig(context).height,
        width: AppConfig(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage('assets/error/image.png'),
              height: AppConfig(context).height / 3,
              width: AppConfig(context).width,
            ),
            const SizedBox(
              height: 5,
            ),
            customText(
                text: 'No internet', fontSize: 20, fontWeight: FontWeight.bold),
            SizedBox(
              width: AppConfig(context).width/2,
              child: customText(
                text: 'Please check if you have a working internet conncetion',
                fontSize: 10,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            customButton(
                width: AppConfig(context).width / 2.4,
                text: 'Refresh',
                color: CustomColor.primaryButtonColor,
                function: (){
                }
            ),

          ],
        ),
      ),
    );
  }
}

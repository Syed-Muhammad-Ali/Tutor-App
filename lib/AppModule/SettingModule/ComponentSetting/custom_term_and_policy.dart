import 'package:flutter/material.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';
import 'package:megamind/AppModule/SettingModule/ComponentSetting/condition_to_use.dart';
import 'package:megamind/AppModule/Utlis/app_bar.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class CustomTermAndPolicy extends StatelessWidget {
  final String appBartitle;
   CustomTermAndPolicy({Key? key,required this.appBartitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: AppConfig(context).height,
        width: AppConfig(context).width,
        child: Column(
          children: [
            app_bar(
              title: appBartitle,
              isIcon: true,
            ),
            const SizedBox(
              height: 20,
            ),
            conditionToUSe(),
            conditionToUSe(),
            conditionToUSe(),



          ],
        ),
      ),
    );
  }
}

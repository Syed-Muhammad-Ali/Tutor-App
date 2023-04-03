import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class TutorProfileViewController extends StatelessWidget {
  const TutorProfileViewController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: AppConfig(context).height,
        width:AppConfig(context).width ,
        child: Column(
          children: [


          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:megamind/AppModule/SearchModule/View/search_appBar_view.dart';
import 'package:megamind/AppModule/Utlis/InputFiled/custom_input_filed.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class SearchViewController extends StatelessWidget {
  const SearchViewController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: AppConfig(context).height,
        width: AppConfig(context).width,
        child: Column(
          children: [
            SearchAppBarView(context: context),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: AppConfig(context).width / 1.1,
              child: TextFormField(

              ),
            ),
          ],
        ),
      ),
    );
  }
}

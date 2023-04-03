import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';

class classes_price_list extends StatelessWidget {
  const classes_price_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConfig(context).width - 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                simpleTextprimary(text: "Date"),
                simpleTextprimary(text: "Week"),
                simpleTextprimary(text: "Time"),
                simpleTextprimary(text: "Price"),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    simpleTextGrey(text: "10 mar"),
                    simpleTextGrey(text: "wed"),
                    simpleTextGrey(text: "1h"),
                    simpleTextGrey(text: "10"),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

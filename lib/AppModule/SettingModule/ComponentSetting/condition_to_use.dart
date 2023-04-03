import 'package:flutter/cupertino.dart';
import 'package:megamind/AppModule/OnBoardScreen/View/custom_text.dart';

Widget conditionToUSe() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customText(
            text: 'Condition of use',
            fontSize: 15,
            fontWeight: FontWeight.bold),
        const SizedBox(
          height: 8,
        ),
        customText(
            text: 'Leo quam eu, enim, cursus molestie luctus phasellus. '
                'Elit est imperdiet egestas dignissim imperdiet elementum, '
                'parturient. Donec mauris pellentesque lorem egestas viverra '
                'euismod leo nibh et. Gravida pulvinar mauris malesuada amet '
                'luctus neque, ipsum. Arcu id montes, nisi',
            fontSize: 14,
            // textAlign: TextAlign.start,
            // maxLine: 6
        )
      ],
    ),
  );
}

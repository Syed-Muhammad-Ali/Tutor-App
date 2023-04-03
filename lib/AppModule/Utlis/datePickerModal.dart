import 'package:flutter/cupertino.dart';

datePicker({
  required context,
 required Function callback,
}) {
  showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 300,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Container(
          height: 300,
          child: CupertinoDatePicker(
              initialDateTime: DateTime.now(),
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (val) {
                callback(val);
                // print(val);
                // // controller.dateOfBirth.value = val;
              }),
        ),
      ));
}
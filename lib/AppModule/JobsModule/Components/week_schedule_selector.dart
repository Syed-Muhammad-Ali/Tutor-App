import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';

class week_selector_schdule extends StatefulWidget {
  Function onSellect;

  week_selector_schdule({Key? key, required this.onSellect}) : super(key: key);

  @override
  _week_selector_schduleState createState() => _week_selector_schduleState();
}

class _week_selector_schduleState extends State<week_selector_schdule> {
  List<week_model> days = [
    week_model(day: "Mon", isSelect: false),
    week_model(day: "Tue", isSelect: false),
    week_model(day: "Wed", isSelect: false),
    week_model(day: "Thu", isSelect: false),
    week_model(day: "Fri", isSelect: false),
    week_model(day: "Sat", isSelect: false),
    week_model(day: "Sun", isSelect: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
         shrinkWrap: true,
        itemCount: days.length,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: InkWell(
            onTap: () {
              setState(() {
                days[index].isSelect=! days[index].isSelect;
                // days.where((element) => element.day==day.day).t
              });
              widget.onSellect(days.where((element) => element.isSelect==true).toList());
            },
            child: Container(
                decoration: BoxDecoration(
                    color: days[index].isSelect
                        ? Color(0xFF4DC591)
                        : Color.fromRGBO(223, 227, 236, 0.64),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    days[index].day,
                    style: TextStyle(color:days[index].isSelect? Colors.white:Colors.grey, fontSize: 12),
                  ),
                )),
          ),
        );
      },),
    );
    //   Wrap(
    //   spacing: 5,
    //   children: days
    //       .map((day) => InkWell(
    //             onTap: () {
    //               setState(() {
    //                 // days.where((element) => element.day==day.day).t
    //               });
    //             },
    //             child: Container(
    //                 decoration: BoxDecoration(
    //                     color: day.isSelect
    //                         ? CustomColor.primaryButtonColor
    //                         : Color.fromRGBO(223, 227, 236, 0.64),
    //                     borderRadius: BorderRadius.circular(5)),
    //                 child: Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Text(
    //                     day.day,
    //                     style: TextStyle(color: Colors.grey, fontSize: 12),
    //                   ),
    //                 )),
    //           ))
    //       .toList(),
    // );
  }
}

class week_model {
  String day;
  bool isSelect;

  week_model({required this.day, required this.isSelect});
}

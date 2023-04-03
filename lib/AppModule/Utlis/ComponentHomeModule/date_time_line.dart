
 import 'package:calender_picker/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/marked_date.dart';

 import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
     show CalendarCarousel;
 import 'package:flutter_calendar_carousel/classes/event.dart';
 import 'package:flutter_calendar_carousel/classes/event_list.dart';
 import 'package:intl/intl.dart' show DateFormat;
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';

// ///TODO : timeline
//  Widget timeLineTime(){
//   return CalenderPicker(
//     DateTime.now(),
//     daysCount:30,
//     width: 47,
//     height: 80,
//     enableMultiSelection: false,
//     dayTextStyle:const TextStyle(fontSize: 10,fontWeight: FontWeight.normal),
//     monthTextStyle:const TextStyle(fontSize: 10,fontWeight: FontWeight.normal),
//     // ignore: avoid_print
//
//     multiSelectionListener: (value) => print(value),
//     selectionColor: const Color(0XFF0342E9),
//     selectedTextColor: Colors.white,
//
//   );
//  }
///Todo calender


class calendar_home extends StatefulWidget {
  calendar_home({Key? key, required this.type}) : super(key: key);


  final int type;

  @override
  _calendar_homeState createState() => new _calendar_homeState();
}

class _calendar_homeState extends State<calendar_home> {
  DateTime _currentDate =  DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();
//  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];
  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// Example with custom icon
    final _calendarCarousel = CalendarCarousel<Event>(


// showHeaderButton: widget.type==1? false:true,
//     showHeader:widget.type==1? false:true,
    showHeader:false,
      headerTextStyle:  TextStyle(
          color: Color(0xFF444444),fontSize: 16,fontWeight: FontWeight.w600
      ),
      onDayPressed: (date, events) {
        this.setState(() => _currentDate = date);
        events.forEach((event) => print(event.title));
      },

      weekendTextStyle: TextStyle(
        color: Color(0xFF444444),fontSize: 16,fontWeight: FontWeight.w600
      ),
      thisMonthDayBorderColor: Color(0xFF444444),
//          weekDays: null, /// for pass null when you do not want to render weekDays
      headerText: '',
      weekFormat: true,
      // markedDatesMap: _markedDateMap,
      height: 200.0,
      selectedDateTime: _currentDate2,
      showIconBehindDayText: true,
//          daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateShowIcon: false,
      markedDateIconMaxShown: 1,
      markedDateMoreCustomDecoration: BoxDecoration(
      color: Colors.orange,
    ),
      selectedDayButtonColor: CustomColor.primaryButtonColor,

      selectedDayTextStyle: TextStyle(
        color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16
      ),
      todayTextStyle: TextStyle(
          color: Color(0xFF444444),fontWeight: FontWeight.w600,fontSize: 16
      ),
      markedDateIconBuilder: (event) {
        return event.icon ?? Icon(Icons.help_outline);
      },
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      todayButtonColor: Colors.transparent,
      todayBorderColor:CustomColor.textFieldBorderColor,
      markedDateMoreShowTotal:
      true, // null for not showing hidden events indicator
      pageSnapping: true,
      childAspectRatio:0.9,
      daysTextStyle: TextStyle(fontSize: 16,color: Color(0xFF444444),fontWeight: FontWeight.w600,),
      weekdayTextStyle: TextStyle(fontSize: 12,color: Color(0xFFBCC1CD),fontWeight: FontWeight.w600,),
      markedDateIconBorderColor: CustomColor.primaryButtonColor,
      iconColor: CustomColor.primaryButtonColor,
//          markedDateIconMargin: 9,
//          markedDateIconOffset: 3,
    );

    return Container(
      // color: Colors.orange,
      margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 30),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _calendarCarousel,
      ),

    );
  }
}

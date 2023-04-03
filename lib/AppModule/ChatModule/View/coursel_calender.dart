// import 'package:flutter/cupertino.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:flutter/material.dart';
//
// import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
//     show CalendarCarousel;
// import 'package:flutter_calendar_carousel/classes/event.dart';
// import 'package:flutter_calendar_carousel/classes/event_list.dart';
// import 'package:intl/intl.dart' show DateFormat;
//
// class tableViewCalender extends StatefulWidget {
//   tableViewCalender({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   _tableViewCalenderState createState() => new _tableViewCalenderState();
// }
//
// class _tableViewCalenderState extends State<tableViewCalender> {
//   DateTime _currentDate = DateTime(2019, 2, 3);
//   DateTime _currentDate2 = DateTime(2019, 2, 3);
//   String _currentMonth = DateFormat.yMMM().format(DateTime(2019, 2, 3));
//   DateTime _targetDateTime = DateTime(2019, 2, 3);
//
// //  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];
//   static Widget _eventIcon = new Container(
//     decoration: new BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.all(Radius.circular(1000)),
//         border: Border.all(color: Colors.blue, width: 2.0)),
//     child: new Icon(
//       Icons.person,
//       color: Colors.amber,
//     ),
//   );
//
//   EventList<Event> _markedDateMap = new EventList<Event>(
//     events: {
//       new DateTime(2019, 2, 10): [
//         // new Event(
//         //   date: new DateTime(2019, 2, 10),
//         //   title: 'Event 1',
//         //   icon: _eventIcon,
//         //   dot: Container(
//         //     margin: EdgeInsets.symmetric(horizontal: 1.0),
//         //     color: Colors.red,
//         //     height: 5.0,
//         //     width: 5.0,
//         //   ),
//         // ),
//         // new Event(
//         //   date: new DateTime(2019, 2, 10),
//         //   title: 'Event 2',
//         //   icon: _eventIcon,
//         // ),
//         // new Event(
//         //   date: new DateTime(2019, 2, 10),
//         //   title: 'Event 3',
//         //   icon: _eventIcon,
//         // ),
//       ],
//     },
//   );
//
//   @override
//   void initState() {
//     /// Add more events to _markedDateMap EventList
//     // _markedDateMap.add(
//     //     new DateTime(2019, 2, 25),
//     //     new Event(
//     //       date: new DateTime(2019, 2, 25),
//     //       title: 'Event 5',
//     //       icon: _eventIcon,
//     //     ));
//
//     // _markedDateMap.add(
//     //     new DateTime(2019, 2, 10),
//     //     new Event(
//     //       date: new DateTime(2019, 2, 10),
//     //       title: 'Event 4',
//     //       icon: _eventIcon,
//     //     ));
//
//     _markedDateMap.addAll(new DateTime(2019, 2, 11), [
//       // new Event(
//       //   date: new DateTime(2019, 2, 11),
//       //   title: 'Event 1',
//       //   icon: _eventIcon,
//       // ),
//       // new Event(
//       //   date: new D  ateTime(2019, 2, 11),
//       //   title: 'Event 2',
//       //   icon: _eventIcon,
//       // ),
//       // new Event(
//       //   date: new DateTime(2019, 2, 11),
//       //   title: 'Event 3',
//       //   icon: _eventIcon,
//       // ),
//     ]);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     /// Example with custom icon
// //     final _calendarCarousel = CalendarCarousel<Event>(
// //       onDayPressed: (date, events) {
// //         this.setState(() => _currentDate = date);
// //         events.forEach((event) => print(event.title));
// //       },
// //       weekendTextStyle: TextStyle(
// //         color: Colors.grey,
// //       ),
// //       thisMonthDayBorderColor: Colors.grey,
// // //          weekDays: null, /// for pass null when you do not want to render weekDays
// //       headerText: 'Custom Header',
// //       weekFormat: true,
// //       markedDatesMap: _markedDateMap,
// //       height: 200.0,
// //       selectedDateTime: _currentDate2,
// //       showIconBehindDayText: true,
// // //          daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
// //       customGridViewPhysics: NeverScrollableScrollPhysics(),
// //       markedDateShowIcon: true,
// //       markedDateIconMaxShown: 2,
// //       selectedDayTextStyle: TextStyle(
// //         color: Colors.white,
// //       ),
// //       todayTextStyle: TextStyle(
// //         color: Colors.blue,
// //       ),
// //       markedDateIconBuilder: (event) {
// //         return event.icon ?? Icon(Icons.help_outline);
// //       },
// //       minSelectedDate: _currentDate.subtract(Duration(days: 360)),
// //       maxSelectedDate: _currentDate.add(Duration(days: 360)),
// //       todayButtonColor: Colors.transparent,
// //       todayBorderColor:  Colors.blue,
// //       markedDateMoreShowTotal:
// //           true, // null for not showing hidden events indicator
// // //          markedDateIconMargin: 9,
// // //          markedDateIconOffset: 3,
// //     );
//
//     /// Example Calendar Carousel without header and custom prev & next button
//     final _calendarCarouselNoHeader = CalendarCarousel<Event>(
//       todayBorderColor: Colors.blue,
//       onDayPressed: (date, events) {
//         this.setState(() => _currentDate2 = date);
//         events.forEach((event) => print(event.title));
//       },
//       // daysHaveCircularBorder: true,
//       showOnlyCurrentMonthDate: true,
//       weekendTextStyle: TextStyle(
//         color: Colors.black,
//       ),
//       thisMonthDayBorderColor: Colors.transparent,
//       weekFormat: false,
// //      firstDayOfWeek: 4,
//       markedDatesMap: _markedDateMap,
//       height: 300.0,
//       selectedDateTime: _currentDate2,
//       targetDateTime: _targetDateTime,
//       customGridViewPhysics: NeverScrollableScrollPhysics(),
//       markedDateCustomShapeBorder:
//           CircleBorder(side: BorderSide(color: Colors.white)),
//       markedDateCustomTextStyle: TextStyle(
//         fontSize: 18,
//         color: Colors.blue,
//       ),
//       showHeader: false,
//       todayTextStyle: TextStyle(
//         color: Colors.white,
//       ),
//       // markedDateShowIcon: true,
//       // markedDateIconMaxShown: 2,
//       // markedDateIconBuilder: (event) {
//       //   return event.icon;
//       // },
//       // markedDateMoreShowTotal:
//       //     true,
//       todayButtonColor: Colors.white,
//       selectedDayTextStyle: TextStyle(
//         color: Colors.white,
//       ),
//       daysHaveCircularBorder: false,
//
//       minSelectedDate: _currentDate.subtract(Duration(days: 360)),
//       maxSelectedDate: _currentDate.add(Duration(days: 360)),
//       prevDaysTextStyle: TextStyle(
//         fontSize: 16,
//         color: Colors.transparent,
//       ),
//       inactiveDaysTextStyle: TextStyle(
//         color: Colors.tealAccent,
//         fontSize: 16,
//       ),
//       onCalendarChanged: (DateTime date) {
//         this.setState(() {
//           _targetDateTime = date;
//           _currentMonth = DateFormat.yMMM().format(_targetDateTime);
//         });
//       },
//       onDayLongPressed: (DateTime date) {
//         print('long pressed date $date');
//       },
//     );
//
//     return new Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: <Widget>[
//         //custom icon
//         // Container(
//         //   margin: EdgeInsets.symmetric(horizontal: 16.0),
//         //   child: _calendarCarousel,
//         // ), // This trailing comma makes auto-formatting nicer for build methods.
//         //custom icon without header
//         Container(
//           margin: EdgeInsets.only(
//             top: 30.0,
//             bottom: 16.0,
//             // left: 16.0,
//             // right: 16.0,
//           ),
//           child: new Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               FlatButton(
//                 child: Icon(
//                   Icons.arrow_back_ios,
//                   size: 20,
//                   color: Colors.blue,
//                 ),
//                 onPressed: () {
//                   setState(() {
//                     _targetDateTime = DateTime(
//                         _targetDateTime.year, _targetDateTime.month - 1);
//                     _currentMonth = DateFormat.yMMM().format(_targetDateTime);
//                   });
//                 },
//               ),
//               Text(
//                 _currentMonth,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 24.0,
//                 ),
//               ),
//               FlatButton(
//                 child: Icon(
//                   Icons.arrow_forward_ios_rounded,
//                   size: 20,
//                   color: Colors.blue,
//                 ),
//                 onPressed: () {
//                   setState(() {
//                     _targetDateTime = DateTime(
//                         _targetDateTime.year, _targetDateTime.month + 1);
//                     _currentMonth = DateFormat.yMMM().format(_targetDateTime);
//                   });
//                 },
//               )
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.symmetric(horizontal: 16.0),
//           child: _calendarCarouselNoHeader,
//         ),
//         //
//       ],
//     );
//   }
// }
// // class tableViewCalender extends StatefulWidget {
// //   const tableViewCalender({Key? key}) : super(key: key);
// //
// //   @override
// //   _tableViewCalenderState createState() => _tableViewCalenderState();
// // }
// //
// //
// // class _tableViewCalenderState extends State<tableViewCalender> {
// //   CalendarController _controller;   //controller creation
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = CalendarController();  //initializing it
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child:   SingleChildScrollView(
// //           child: Column(
// //
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: <Widget>[
// //
// //               TableCalendar(
// //                 initialCalendarFormat: CalendarFormat.month,
// //                 calendarStyle: CalendarStyle(
// //                     todayColor  : Colors.blue,
// //                     selectedColor: Theme.of(context).primaryColor,
// //                     todayStyle: TextStyle(
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 22.0,
// //                         color: Colors.white)
// //                 ),
// //                 headerStyle: HeaderStyle(
// //                   centerHeaderTitle: true,
// //                   formatButtonDecoration: BoxDecoration(
// //                     color: Colors.brown,
// //                     borderRadius: BorderRadius.circular(22.0),
// //                   ),
// //                   formatButtonTextStyle: TextStyle(color: Colors.white),
// //                   formatButtonShowsNext: false,
// //                 ),
// //                 startingDayOfWeek: StartingDayOfWeek.monday,
// //                 onDaySelected: (date, events,e) {
// //                   print(date.toUtc());
// //                 },
// //                 builders: CalendarBuilders(
// //                   selectedDayBuilder: (context, date, events) => Container(
// //                       margin: const EdgeInsets.all(5.0),
// //                       alignment: Alignment.center,
// //                       decoration: BoxDecoration(
// //                           color: Theme.of(context).primaryColor,
// //                           borderRadius: BorderRadius.circular(8.0)),
// //                       child: Text(
// //                         date.day.toString(),
// //                         style: TextStyle(color: Colors.white),
// //                       )),
// //                   todayDayBuilder: (context, date, events) => Container(
// //                       margin: const EdgeInsets.all(5.0),
// //                       alignment: Alignment.center,
// //                       decoration: BoxDecoration(
// //                           color: Colors.blue,
// //                           borderRadius: BorderRadius.circular(8.0)),
// //                       child: Text(
// //                         date.day.toString(),
// //                         style: TextStyle(color: Colors.white),
// //                       )),
// //                 ),
// //                 calendarController: _controller,
// //               )
// //             ],
// //           ),
// //
// //     );
// //   }
// // }
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:flutter/cupertino.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class tableViewCalender extends StatefulWidget {
  Function selectedDate;
  DateTime startDate;

  tableViewCalender({required this.selectedDate,required this.startDate});

  @override
  tableViewCalenderState createState() => tableViewCalenderState();
}

/// State for MyApp
class tableViewCalenderState extends State<tableViewCalender> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {

    setState(() {
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
    widget.selectedDate(args.value.endDate);
  }

  // Positioned(
  //   left: 0,
  //   right: 0,
  //   top: 0,
  //   height: 80,
  //   child: Column(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     mainAxisSize: MainAxisSize.min,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       Text('Selected date: ' + _selectedDate),
  //       Text('Selected date count: ' + _dateCount),
  //       Text('Selected range: ' + _range),
  //       Text('Selected ranges count: ' + _rangeCount)
  //     ],
  //   ),
  // ),
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: SfDateRangePicker(
        // view: DateRangePickerView.year,
        headerStyle: DateRangePickerHeaderStyle(textAlign: TextAlign.center),
        onSelectionChanged: _onSelectionChanged,
        selectionMode: DateRangePickerSelectionMode.extendableRange,
        initialSelectedRange: PickerDateRange(widget.startDate,widget.startDate,
            // DateTime.now().subtract(const Duration(days: 4)),
            // DateTime.now().add(const Duration(days: 3))
        ),

        selectionShape: DateRangePickerSelectionShape.rectangle,
        headerHeight: 50,
        selectionRadius: 30,
      ),
    );
  }
}

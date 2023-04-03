
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:flutter/cupertino.dart';
import 'package:megamind/AppModule/Utlis/Button/custom_button.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class multi_date_selector extends StatefulWidget {
  @override
  multi_date_selectorState createState() => multi_date_selectorState();
}

/// State for MyApp
class multi_date_selectorState extends State<multi_date_selector> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';


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
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,),
      child: SfDateRangePicker(
        // view: DateRangePickerView.year,
        headerStyle: DateRangePickerHeaderStyle(textAlign: TextAlign.center),
        onSelectionChanged: _onSelectionChanged,

        selectionMode: DateRangePickerSelectionMode.multiple,
        initialSelectedRange: PickerDateRange(
            DateTime.now().subtract(const Duration(days: 4)),
            DateTime.now().add(const Duration(days: 3))),

        selectionShape: DateRangePickerSelectionShape.rectangle,
        headerHeight: 50,
        selectionRadius: 30,

      ),
    );
  }
}
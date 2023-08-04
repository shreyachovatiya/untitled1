import 'package:flutter/material.dart';

class DateRangePickerDemo extends StatefulWidget {
  const DateRangePickerDemo({Key? key}) : super(key: key);

  @override
  State<DateRangePickerDemo> createState() => _DateRangePickerDemoState();
}

class _DateRangePickerDemoState extends State<DateRangePickerDemo> {
  var date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.date_range_outlined),
        onPressed: () {
          showDateRangePicker(
                  context: context,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100))
              .then(
            (value) {
              date = value!.duration.inDays;
              setState(() {});
            },
          );
        },
      ),
      body: Center(
        child: Text("${date}"),
      ),
    );
  }
}

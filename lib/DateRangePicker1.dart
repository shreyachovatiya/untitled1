import 'package:flutter/material.dart';

class DateRangePicker1Page extends StatefulWidget {
  const DateRangePicker1Page({Key? key}) : super(key: key);

  @override
  State<DateRangePicker1Page> createState() => _DateRangePicker1PageState();
}

class _DateRangePicker1PageState extends State<DateRangePicker1Page> {
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
        child: Text(
          "${date}",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

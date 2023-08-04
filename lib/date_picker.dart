import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({Key? key}) : super(key: key);

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime initial = DateTime.now();
  DateTime current = DateTime.now();

  DateFormat dateFormat = DateFormat("dd/MM/yyyy");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() async {
            current = (await showDatePicker(
              keyboardType: TextInputType.text,
              cancelText: "Exit",
              confirmText: "Done",
              errorInvalidText: "Invalid",
              helpText: "Select Date",
              fieldLabelText: "Select Date",
              fieldHintText: "Date",
              context: context,
              initialDate: initial,
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
            ))!;
            setState(() {});
          });
        },
        child: Icon(Icons.date_range),
      ),
      body: Center(
        child: Text("${dateFormat.format(current)}"),
      ),
    );
  }
}

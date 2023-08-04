import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datepicker1page extends StatefulWidget {
  const Datepicker1page({Key? key}) : super(key: key);

  @override
  State<Datepicker1page> createState() => _Datepicker1pageState();
}

class _Datepicker1pageState extends State<Datepicker1page> {
  DateTime initial = DateTime.now();
  DateTime current = DateTime.now();

  DateFormat dateFormat = DateFormat("dd/MM/yyyy");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () async {
              current = (await showDatePicker(
                // keyboardType: TextInputType.datetime,
                cancelText: "Exit",
                confirmText: "Done",
                errorInvalidText: "Invalid",
                helpText: "Select Date",
                fieldHintText: "date",
                fieldLabelText: "Select Date",
                context: context,
                initialDate: initial,
                firstDate: DateTime(1900),
                lastDate: DateTime(2100),
              ))!;
              setState(() {});
            },
          );
        },
        child: Icon(Icons.date_range_outlined),
      ),
      body: Center(
        child: Text(
          "${dateFormat.format(current)}",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

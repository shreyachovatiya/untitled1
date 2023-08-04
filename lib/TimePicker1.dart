import 'package:flutter/material.dart';

class TimePicker1Page extends StatefulWidget {
  const TimePicker1Page({Key? key}) : super(key: key);

  @override
  State<TimePicker1Page> createState() => _TimePicker1PageState();
}

class _TimePicker1PageState extends State<TimePicker1Page> {
  String? time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showTimePicker(
            context: context,
            initialTime: TimeOfDay(hour: 12, minute: 60),
          ).then(
            (value) {
              time = value!.format(context);
              setState(() {});
            },
          );
        },
        child: Icon(Icons.timer_outlined),
      ),
      body: Center(
        child: Text(
          "${time}",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

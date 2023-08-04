import 'package:flutter/material.dart';

class ButtonsDemo extends StatefulWidget {
  const ButtonsDemo({Key? key}) : super(key: key);

  @override
  State<ButtonsDemo> createState() => _ButtonsDemoState();
}

class _ButtonsDemoState extends State<ButtonsDemo> {
  double slidervalue = 0;
  bool isswitch = false;
  bool ischeck = true;
  int radio = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderTheme(
            data: SliderThemeData(
                activeTrackColor: Colors.green,
                inactiveTrackColor: Colors.grey,
                thumbColor: Colors.white,
                activeTickMarkColor: Colors.white,
                inactiveTickMarkColor: Colors.white,
                trackHeight: 10,
                valueIndicatorColor: Colors.transparent,
                valueIndicatorTextStyle: TextStyle(
                  color: Colors.black,
                ),
                overlayColor: Colors.blue),
            child: Slider.adaptive(
              min: 0,
              max: 100,
              value: slidervalue,
              divisions: 20,
              label: "\€${slidervalue.toStringAsFixed(0)}",
              onChanged: (value) {
                setState(
                  () {
                    slidervalue = value;
                  },
                );
              },
            ),
          ),
          Switch(
            thumbColor: MaterialStateProperty.all(Colors.white),
            // activeColor: Colors.green,
            inactiveTrackColor: Colors.red,
            activeTrackColor: Colors.green,
            value: isswitch,
            onChanged: (value) {
              setState(() {
                isswitch = !isswitch;
              });
            },
          ),
          Checkbox(
            value: ischeck,
            fillColor: MaterialStateProperty.all(Colors.green),
            // activeColor: Colors.green,
            checkColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onChanged: (value) {
              setState(() {
                ischeck = !ischeck;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Male"),
              Radio(
                value: 1,
                groupValue: radio,
                onChanged: (value) {
                  setState(() {
                    radio = value!;
                  });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Female"),
              Radio(
                value: 2,
                groupValue: radio,
                onChanged: (value) {
                  setState(() {
                    radio = value!;
                  });
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}

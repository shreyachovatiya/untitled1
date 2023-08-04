import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextGradientDemo extends StatefulWidget {
  const TextGradientDemo({Key? key}) : super(key: key);

  @override
  State<TextGradientDemo> createState() => _TextGradientDemoState();
}

class _TextGradientDemoState extends State<TextGradientDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Shreya",
              style: TextStyle(
                fontSize: 12.h,
                foreground: Paint()
                  ..shader = LinearGradient(colors: [
                    Colors.black,
                    Colors.green,
                    Colors.yellow,
                    Colors.red
                  ]).createShader(Rect.fromLTRB(80, 0, 300, 0)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

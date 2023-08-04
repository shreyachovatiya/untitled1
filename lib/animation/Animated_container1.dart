import 'package:flutter/material.dart';

class AnimatedContainer1Page extends StatefulWidget {
  const AnimatedContainer1Page({Key? key}) : super(key: key);

  @override
  State<AnimatedContainer1Page> createState() => _AnimatedContainer1PageState();
}

class _AnimatedContainer1PageState extends State<AnimatedContainer1Page> {
  double height = 200;
  double width = 200;
  Color color = Colors.indigo;
  Alignment alignment = Alignment.topLeft;
  Curve curve = Curves.linear;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              curve =
                  curve == Curves.linear ? Curves.bounceInOut : Curves.linear;
              alignment = alignment == Alignment.topLeft
                  ? Alignment.bottomRight
                  : Alignment.topLeft;
              height = height == 200 ? 100 : 200;
              width = width == 200 ? 100 : 200;
              color = color == Colors.indigo ? Colors.yellow : Colors.indigo;
            },
          );
        },
      ),
      body: Center(
        child: AnimatedContainer(
          alignment: alignment,
          curve: curve,
          duration: Duration(seconds: 2),
          child: Container(
            height: height,
            width: width,
            color: color,
          ),
        ),
      ),
    );
  }
}

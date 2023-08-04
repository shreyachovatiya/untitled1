import 'package:flutter/material.dart';

class AnimatedAlignpage extends StatefulWidget {
  const AnimatedAlignpage({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignpage> createState() => _AnimatedAlignpageState();
}

class _AnimatedAlignpageState extends State<AnimatedAlignpage> {
  Alignment alignment = Alignment.topCenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            alignment = alignment == Alignment.topCenter
                ? Alignment.bottomCenter
                : Alignment.topCenter;
          });
        },
      ),
      body: AnimatedAlign(
          duration: Duration(seconds: 2),
          child: Container(
            height: 200,
            width: 200,
            color: Colors.indigo,
          ),
          alignment: alignment),
    );
  }
}

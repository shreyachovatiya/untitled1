import 'package:flutter/material.dart';

class CommonButton1 extends StatefulWidget {
  const CommonButton1({Key? key, this.color, this.text, required this.onpress})
      : super(key: key);

  final color;
  final text;
  final onpress;

  @override
  State<CommonButton1> createState() => _CommonButton1State();
}

class _CommonButton1State extends State<CommonButton1> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: 250,
      color: widget.color,
      onPressed: widget.onpress,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      child: widget.text,
    );
  }
}

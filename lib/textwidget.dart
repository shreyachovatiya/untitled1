import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "hello shreya",
        textDirection: TextDirection.ltr,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: TextStyle(
          //backgroundColor: Colors.teal,
          color: Colors.lightBlueAccent,
          fontSize: 30,
          fontWeight: FontWeight.w700,
          fontFamily: "ShantellSans",
          letterSpacing: 5,
          wordSpacing: 2,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.double,
          decorationThickness: 2,
          decorationColor: Colors.amberAccent,
          shadows: [
            Shadow(color: Colors.white, offset: Offset(5, 5), blurRadius: 10)
          ],
        ),
      ),
    );
  }
}

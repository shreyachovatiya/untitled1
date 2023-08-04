import 'package:flutter/material.dart';

class ExplicitAnimation1Page extends StatefulWidget {
  const ExplicitAnimation1Page({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimation1Page> createState() => _ExplicitAnimation1PageState();
}

class _ExplicitAnimation1PageState extends State<ExplicitAnimation1Page> {
  Color color = Colors.yellow;
  double height = 200;
  double width = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          onEnd: () {
            setState(() {
              color = color == Colors.yellow
                  ? Colors.pink
                  : color == Colors.pink
                      ? Colors.black
                      : color == Colors.black
                          ? Colors.orange
                          : Colors.yellow;
              height = height == 200 ? 100 : 200;
              width = width == 200 ? 100 : 200;
            });
          },
          duration: Duration(seconds: 1),
          tween: ColorTween(end: color, begin: Colors.pink),
          builder: (context, value, child) {
            return Container(
              height: height,
              width: width,
              color: color,
            );
          },
        ),
      ),
    );
  }
}

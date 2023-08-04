import 'package:flutter/material.dart';

class ExplicitAnimationDemo extends StatefulWidget {
  const ExplicitAnimationDemo({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationDemo> createState() => _ExplicitAnimationDemoState();
}

class _ExplicitAnimationDemoState extends State<ExplicitAnimationDemo> {
  Color color = Colors.green;
  double height = 200;
  double width = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          onEnd: () {
            setState(() {
              color = color == Colors.green
                  ? Colors.red
                  : color == Colors.red
                      ? Colors.orange
                      : Colors.green;

              height = height == 200 ? 100 : 200;
              width = width == 200 ? 100 : 200;
            });
          },
          tween: ColorTween(begin: Colors.red, end: color),
          duration: Duration(milliseconds: 1000),
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

///AlignmentTween
///BorderRadiusTween
///BorderTween
///DecorationTween
///TextStyleTween
///CurveTween

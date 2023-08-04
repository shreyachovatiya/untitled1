import 'package:flutter/material.dart';

class ExplicitAnimationCurvePage extends StatefulWidget {
  const ExplicitAnimationCurvePage({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationCurvePage> createState() =>
      _ExplicitAnimationCurvePageState();
}

class _ExplicitAnimationCurvePageState
    extends State<ExplicitAnimationCurvePage> {
  Curve curve = Curves.bounceInOut;
  Alignment alignment = Alignment.bottomRight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        onEnd: () {
          setState(() {
            curve = curve == Curves.bounceInOut
                ? Curves.linear
                : Curves.bounceInOut;
            alignment = alignment == Alignment.bottomRight
                ? Alignment.topLeft
                : Alignment.bottomRight;
          });
        },
        tween: AlignmentTween(begin: Alignment.topLeft, end: alignment),
        duration: Duration(seconds: 2),
        builder: (context, value, child) {
          return AnimatedContainer(
            alignment: alignment,
            curve: curve,
            duration: Duration(seconds: 2),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}

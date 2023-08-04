import 'package:flutter/material.dart';

class ExplicitAnimationCurve1Page extends StatefulWidget {
  const ExplicitAnimationCurve1Page({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationCurve1Page> createState() =>
      _ExplicitAnimationCurve1State();
}

class _ExplicitAnimationCurve1State extends State<ExplicitAnimationCurve1Page> {
  Curve curve = Curves.bounceInOut;
  Alignment alignment = Alignment.topCenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        onEnd: () {
          setState(() {
            curve = curve == Curves.bounceInOut
                ? Curves.linear
                : Curves.bounceInOut;
            alignment = alignment == Alignment.topCenter
                ? Alignment.bottomCenter
                : Alignment.topCenter;
          });
        },
        tween: AlignmentTween(end: alignment, begin: Alignment.topLeft),
        duration: Duration(seconds: 2),
        builder: (context, value, child) {
          return AnimatedContainer(
            duration: Duration(seconds: 2),
            curve: curve,
            alignment: alignment,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://m.media-amazon.com/images/I/51IM+jkaEbL._SX569_.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}

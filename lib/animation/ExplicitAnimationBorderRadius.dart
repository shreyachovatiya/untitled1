import 'package:flutter/material.dart';

class ExplicitAnimationBorderRadiusPage extends StatefulWidget {
  const ExplicitAnimationBorderRadiusPage({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationBorderRadiusPage> createState() =>
      _ExplicitAnimationBorderRadiusPageState();
}

class _ExplicitAnimationBorderRadiusPageState
    extends State<ExplicitAnimationBorderRadiusPage> {
  double borderradius = 50;
  double height = 200;
  double width = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          onEnd: () {
            setState(
              () {
                borderradius = borderradius == 50 ? 0 : 50;
                height = height == 200 ? 100 : 200;
                width = width == 200 ? 100 : 200;
              },
            );
          },
          tween: BorderRadiusTween(
              begin: BorderRadius.circular(20),
              end: BorderRadius.circular(borderradius)),
          duration: Duration(seconds: 1),
          builder: (context, value, child) {
            return Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(borderradius),
              ),
            );
          },
        ),
      ),
    );
  }
}

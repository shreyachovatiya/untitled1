import 'package:flutter/material.dart';

class ExplicitAnimationAlignPage extends StatefulWidget {
  const ExplicitAnimationAlignPage({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationAlignPage> createState() =>
      _ExplicitAnimationAlignPageState();
}

class _ExplicitAnimationAlignPageState
    extends State<ExplicitAnimationAlignPage> {
  Alignment alignment = Alignment.topLeft;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        onEnd: () {
          setState(() {
            alignment = alignment == Alignment.topLeft
                ? Alignment.bottomRight
                : Alignment.topLeft;
          });
        },
        duration: Duration(seconds: 1),
        tween: AlignmentTween(end: alignment, begin: Alignment.bottomCenter),
        builder: (context, value, child) {
          return Align(
            alignment: alignment,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
          );
        },
      ),
    );
  }
}

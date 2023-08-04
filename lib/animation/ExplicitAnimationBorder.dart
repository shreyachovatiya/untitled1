import 'package:flutter/material.dart';

class ExplicitAnimationBorderPage extends StatefulWidget {
  const ExplicitAnimationBorderPage({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationBorderPage> createState() =>
      _ExplicitAnimationBorderPageState();
}

class _ExplicitAnimationBorderPageState
    extends State<ExplicitAnimationBorderPage> {
  Border border = Border.fromBorderSide(BorderSide.none);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          onEnd: () {
            setState(() {
              border = border == Border.fromBorderSide(BorderSide.none)
                  ? Border.all(color: Colors.indigo, width: 3)
                  : Border.fromBorderSide(BorderSide.none);
            });
          },
          tween:
              BorderTween(begin: Border.all(color: Colors.pink), end: border),
          duration: Duration(seconds: 1),
          builder: (context, value, child) {
            return Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.yellow,
                border: border,
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ExplicitAnimationDecorationPage extends StatefulWidget {
  const ExplicitAnimationDecorationPage({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationDecorationPage> createState() =>
      _ExplicitAnimationDecorationPageState();
}

class _ExplicitAnimationDecorationPageState
    extends State<ExplicitAnimationDecorationPage> {
  Decoration decoration = BoxDecoration();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          onEnd: () {
            setState(() {
              decoration = decoration ==
                      BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.red,
                            offset: Offset(10, 10),
                            blurRadius: 5)
                      ], color: Colors.teal)
                  ? BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 3))
                  : BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.red,
                          offset: Offset(10, 10),
                          blurRadius: 5)
                    ], color: Colors.teal);
            });
          },
          duration: Duration(seconds: 1),
          tween: DecorationTween(
              end: decoration, begin: BoxDecoration(color: Colors.red)),
          builder: (context, value, child) {
            return Container(
              height: 200,
              width: 200,
              decoration: decoration,
            );
          },
        ),
      ),
    );
  }
}

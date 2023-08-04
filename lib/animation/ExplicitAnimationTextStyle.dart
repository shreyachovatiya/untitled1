import 'package:flutter/material.dart';

class ExplicitAnimationTextStylePage extends StatefulWidget {
  const ExplicitAnimationTextStylePage({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationTextStylePage> createState() =>
      _ExplicitAnimationTextStylePageState();
}

class _ExplicitAnimationTextStylePageState
    extends State<ExplicitAnimationTextStylePage> {
  TextStyle textStyle = TextStyle();
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          onEnd: () {
            setState(
              () {
                textStyle = textStyle ==
                        TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                            color: Colors.red,
                            shadows: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 5)
                            ])
                    ? TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..shader = LinearGradient(colors: [
                            Colors.purple.shade800,
                            Colors.purple.shade600,
                            Colors.purple.shade400,
                            Colors.purple.shade200,
                          ]).createShader(
                            Rect.fromLTRB(80, 0, 200, 0),
                          ),
                      )
                    : TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Colors.red,
                        shadows: [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(2, 2),
                              blurRadius: 5)
                        ],
                      );
                text = text == "Hello"
                    ? "Shreya"
                    : text = text == "Shreya" ? "How Are you?" : "Hello";
              },
            );
          },
          tween: TextStyleTween(begin: TextStyle(fontSize: 10), end: textStyle),
          duration: Duration(seconds: 1),
          builder: (context, value, child) {
            return Text(
              text,
              style: textStyle,
            );
          },
        ),
      ),
    );
  }
}

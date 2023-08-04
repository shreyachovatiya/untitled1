import 'package:flutter/material.dart';

class AnimatedRotationPage extends StatefulWidget {
  const AnimatedRotationPage({Key? key}) : super(key: key);

  @override
  State<AnimatedRotationPage> createState() => _AnimatedRotationPageState();
}

class _AnimatedRotationPageState extends State<AnimatedRotationPage> {
  double rotation = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            rotation = rotation == 0
                ? 5
                : rotation == 5
                    ? 3
                    : 0;
            // rotation == 2 ? 3 : 0;
          });
        },
      ),
      body: Center(
        child: AnimatedRotation(
            duration: Duration(seconds: 1),
            child: Center(
              child: Text(
                "Codeline",
                style: TextStyle(
                  foreground: Paint()
                    ..shader = LinearGradient(colors: [
                      Colors.teal.shade800,
                      Colors.teal.shade600,
                      Colors.teal.shade400,
                      Colors.teal.shade200,
                    ]).createShader(
                      Rect.fromLTRB(80, 0, 200, 0),
                    ),
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            turns: rotation),
      ),
    );
  }
}

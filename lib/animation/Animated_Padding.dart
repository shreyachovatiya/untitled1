import 'package:flutter/material.dart';

class AnimatedPaddingPage extends StatefulWidget {
  const AnimatedPaddingPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingPage> createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  double padding = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            padding = padding == 0 ? 20 : 0;
          });
        },
      ),
      body: Center(
        child: AnimatedPadding(
            duration: Duration(seconds: 1),
            child: Container(
              height: 80,
              width: 360,
              color: Colors.indigo,
            ),
            padding: EdgeInsets.symmetric(horizontal: padding)),
      ),
    );
  }
}

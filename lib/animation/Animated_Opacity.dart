import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  double opacity = 0.9;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = opacity == 0.9 ? 0.09 : 0.9;
          });
        },
      ),
      body: Center(
        child: AnimatedOpacity(
            duration: Duration(seconds: 1),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.pink,
            ),
            opacity: opacity),
      ),
    );
  }
}

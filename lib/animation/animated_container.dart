import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  double height = 200;
  double width = 200;
  Color color = Colors.red;
  Border border = Border.fromBorderSide(BorderSide.none);
  double borderradius = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          height = height == 200 ? 150 : 200;
          width = width == 200 ? 150 : 200;
          color = color == Colors.red ? Colors.green : Colors.red;
          border = border == Border.fromBorderSide(BorderSide.none)
              ? Border.all(color: Colors.indigo, width: 3)
              : Border.fromBorderSide(BorderSide.none);
          borderradius = borderradius == 20 ? 0 : 20;
          setState(() {});
        },
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: color,
              border: border,
              borderRadius: BorderRadius.circular(borderradius),
            ),
          ),
        ),
      ),
    );
  }
}

///AnimatedAlign
///AnimatedOpacity
///AnimatedPadding
///AnimatedRotation

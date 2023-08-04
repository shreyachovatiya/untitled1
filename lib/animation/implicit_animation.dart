import 'package:flutter/material.dart';

class ImplicitAnimationDemo extends StatefulWidget {
  const ImplicitAnimationDemo({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimationDemo> createState() => _ImplicitAnimationDemoState();
}

class _ImplicitAnimationDemoState extends State<ImplicitAnimationDemo>
    with TickerProviderStateMixin {
  AnimationController? controller;

  @override
  void initState() {
    controller =
      AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              if (controller!.isAnimating) {
                controller!.stop();
              } else if (controller!.isCompleted) {
                controller!.reverse();
              } else {
                controller!.forward();
              }
            },
          );
        },
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: controller!,
          builder: (context, child) {
            return Container(
              height: controller!.value * 200,
              width: controller!.value * 200,
              color: Colors.red,
            );
          },
        ),
      ),
    );
  }
}

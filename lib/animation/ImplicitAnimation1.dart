import 'package:flutter/material.dart';

class ImplicitAnimation1Page extends StatefulWidget {
  const ImplicitAnimation1Page({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimation1Page> createState() => _ImplicitAnimation1PageState();
}

class _ImplicitAnimation1PageState extends State<ImplicitAnimation1Page>
    with TickerProviderStateMixin {
  AnimationController? controller;
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..reverse();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(
      //       () {
      //         if (controller!.isAnimating) {
      //           controller!.stop();
      //         } else if (controller!.isCompleted) {
      //           controller!.reverse();
      //         } else {
      //           controller!.forward();
      //         }
      //       },
      //     );
      //   },
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 300),
            Center(
              child: AnimatedBuilder(
                animation: controller!,
                builder: (context, child) {
                  return Center(
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
                        fontSize: controller!.value * 60,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
            ),
            Spacer(),
            TextButton(
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
              child: Text(
                "Start",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

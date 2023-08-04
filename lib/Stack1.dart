import 'package:flutter/material.dart';

class Stack1Widget extends StatelessWidget {
  const Stack1Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.pink,
            ),
            Positioned(
              top: 30,
              right: -50,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: -30,
              left: -50,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          //alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
            Positioned(
              top: 20,
                right: -30,
                child: Container(
              height: 200,
              width: 200,
              color: Colors.black,
            )),
            Positioned(
              top: -30,
              left: -30,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

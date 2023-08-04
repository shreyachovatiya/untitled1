import 'package:flutter/material.dart';

class ConstrantBoxDemo extends StatefulWidget {
  const ConstrantBoxDemo({Key? key}) : super(key: key);

  @override
  State<ConstrantBoxDemo> createState() => _ConstrantBoxDemoState();
}

class _ConstrantBoxDemoState extends State<ConstrantBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: 100, minHeight: 100, maxHeight: 300, maxWidth: 300),
              child: Container(
                height: 400,
                width: 400,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

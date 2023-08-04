import 'package:flutter/material.dart';

class IncDecDemo extends StatefulWidget {
  const IncDecDemo({Key? key}) : super(key: key);

  @override
  State<IncDecDemo> createState() => _IncDecDemoState();
}

class _IncDecDemoState extends State<IncDecDemo> {
  int data = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: IconButton(
              onPressed: () {
                data++;
                setState(() {});
              },
              icon: Icon(Icons.add),
            ),
          ),
          Text("$data"),
          IconButton(
            onPressed: () {
              if (data > 0) {
                data--;
              }
              setState(() {});
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

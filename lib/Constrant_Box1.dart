import 'package:flutter/material.dart';

class ConstrantBoxPage extends StatefulWidget {
  const ConstrantBoxPage({Key? key}) : super(key: key);

  @override
  State<ConstrantBoxPage> createState() => _ConstrantBoxPageState();
}

class _ConstrantBoxPageState extends State<ConstrantBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 200,
                maxWidth: 200,
                minHeight: 50,
                minWidth: 50,
              ),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ListGenerateDemo extends StatelessWidget {
  const ListGenerateDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(
              10,
              (index) => Container(
                height: 100,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(top: 10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

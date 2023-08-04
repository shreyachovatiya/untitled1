import 'package:flutter/material.dart';

import 'Stack1.dart';
import 'assetsImage.dart';
import 'iconwidget.dart';

class CircleAvatar1 extends StatelessWidget {
  const CircleAvatar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkResponse(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Stack1Widget(),
              ),
            );
          },
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.cyan,
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

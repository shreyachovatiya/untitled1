import 'package:flutter/material.dart';

import 'Circle_avtar.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CircleAvtarDemo(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_back)),
          Icon(
            Icons.person,
            color: Colors.black,
            size: 30,
            shadows: [
              BoxShadow(color: Colors.red, offset: Offset(2, 2), blurRadius: 5)
            ],
          ),
        ],
      ),
    );
  }
}

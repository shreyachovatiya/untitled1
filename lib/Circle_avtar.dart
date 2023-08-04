import 'package:flutter/material.dart';

import 'assetsImage.dart';

class CircleAvtarDemo extends StatelessWidget {
  const CircleAvtarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkResponse(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => AssetsImageWidget(),
              ),
            );
          },
          child: CircleAvatar(
            backgroundColor: Colors.teal,
            radius: 60,
            child: Icon(Icons.add),
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1680800219823-89fad626eee1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
            ),
          ),
        ),
      ),
    );
  }
}

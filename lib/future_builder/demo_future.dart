import 'package:flutter/material.dart';

class FutureDemo extends StatefulWidget {
  const FutureDemo({Key? key}) : super(key: key);

  @override
  State<FutureDemo> createState() => _FutureDemoState();
}

class _FutureDemoState extends State<FutureDemo> {
  List<Map<String, dynamic>> person = [
    {
      "name": "Shreya",
      "lastname": "Chovatiya",
      "number": 9876543201,
    }
  ];
  Future getData() async {
    print("Hello");

    await Future.delayed(Duration(seconds: 2));

    print("Hello Codeline");

    return person;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: Text("${snapshot.data}"),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("something wan't wrong"),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

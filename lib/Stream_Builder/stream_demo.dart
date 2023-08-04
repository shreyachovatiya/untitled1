import 'dart:async';
import 'package:flutter/material.dart';

class StreamDemo extends StatefulWidget {
  const StreamDemo({Key? key}) : super(key: key);

  @override
  State<StreamDemo> createState() => _StreamDemoState();
}

class _StreamDemoState extends State<StreamDemo> {
  StreamController counter = StreamController();

  int data = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          data++;
          counter.sink.add(data);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: StreamBuilder(
        stream: counter.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text("${snapshot.data}"),
            );
          } else {
            return Center(
              child: Text("${data}"),
            );
          }
        },
      ),
    );
  }
}

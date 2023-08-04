import 'dart:async';
import 'package:flutter/material.dart';

class StreamBuilder1Page extends StatefulWidget {
  const StreamBuilder1Page({Key? key}) : super(key: key);

  @override
  State<StreamBuilder1Page> createState() => _StreamBuilder1PageState();
}

class _StreamBuilder1PageState extends State<StreamBuilder1Page> {
  int data = 0;
  StreamController counter = StreamController();
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

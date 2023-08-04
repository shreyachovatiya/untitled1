import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderTask extends StatefulWidget {
  const StreamBuilderTask({Key? key, this.add}) : super(key: key);
  final add;
  @override
  State<StreamBuilderTask> createState() => _StreamBuilderTaskState();
}

class _StreamBuilderTaskState extends State<StreamBuilderTask> {
  TextEditingController datacontroller = TextEditingController();
  StreamController counter = StreamController();
  List name = [];
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              TextFormField(
                controller: datacontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Data",
                  constraints: BoxConstraints.expand(height: 50, width: 320),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  height: 30,
                  width: 70,
                  color: Colors.black12,
                  child: TextButton(
                    onPressed: () {
                      setState(
                        () {
                          name.add(datacontroller.text);
                          counter.sink.add(name);
                          datacontroller.clear();
                        },
                      );
                    },
                    child: Text("Add"),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return Text("${name[index]}");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

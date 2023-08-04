import 'package:flutter/material.dart';

class Dismissable1Page extends StatefulWidget {
  const Dismissable1Page({Key? key}) : super(key: key);

  @override
  State<Dismissable1Page> createState() => _Dismissable1PageState();
}

class _Dismissable1PageState extends State<Dismissable1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          10,
          (index) => Center(
            child: Dismissible(
              key: UniqueKey(),
              crossAxisEndOffset: 5,
              //direction: DismissDirection.endToStart,
              background: Icon(Icons.delete),
              secondaryBackground: Icon(Icons.arrow_back),
              child: Container(
                height: 50,
                width: 150,
                child: Center(child: Text("hello")),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

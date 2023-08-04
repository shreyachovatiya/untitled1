import 'package:flutter/material.dart';

class DismissibleDemo extends StatefulWidget {
  const DismissibleDemo({Key? key}) : super(key: key);

  @override
  State<DismissibleDemo> createState() => _DismissibleDemoState();
}

class _DismissibleDemoState extends State<DismissibleDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: List.generate(
            11,
            (index) => Dismissible(
              crossAxisEndOffset: -5,
              // direction: DismissDirection.startToEnd,
              background: Icon(Icons.delete),
              secondaryBackground: Icon(Icons.share),
              key: UniqueKey(),
              child: Container(
                height: 30,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Index ${index}",
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

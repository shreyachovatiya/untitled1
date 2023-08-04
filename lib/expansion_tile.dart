import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatefulWidget {
  const ExpansionTileDemo({Key? key}) : super(key: key);

  @override
  State<ExpansionTileDemo> createState() => _ExpansionTileDemoState();
}

class _ExpansionTileDemoState extends State<ExpansionTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ExpansionTile(
                // tilePadding: EdgeInsets.symmetric(horizontal: 50),
                backgroundColor: Colors.red,
                iconColor: Colors.green,
                textColor: Colors.white,
                collapsedIconColor: Colors.white,
                collapsedBackgroundColor: Colors.green,
                collapsedTextColor: Colors.white,
                childrenPadding: EdgeInsets.symmetric(horizontal: 20),
                expandedAlignment: Alignment.centerLeft,
                title: Text("Select your choice"),
                children: [
                  Text("A"),
                  Text("B"),
                  Text("C"),
                  Text("D"),
                  Text("E"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class ListViewSeparatedDemo extends StatefulWidget {
  const ListViewSeparatedDemo({Key? key}) : super(key: key);

  @override
  State<ListViewSeparatedDemo> createState() => _ListViewSeparatedDemoState();
}

class _ListViewSeparatedDemoState extends State<ListViewSeparatedDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.red,
                        margin: EdgeInsets.only(top: 10),
                      ),
                      DottedLine(
                        direction: Axis.horizontal,
                        lineLength: double.infinity,
                        lineThickness: 3.0,
                        dashLength: 2.0,
                        dashColor: Colors.black,
                        dashGapLength: 2.0,
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return index % 3 == 2
                      ? Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              color: Colors.green,
                              margin: EdgeInsets.only(top: 10),
                            ),
                            DottedLine(
                              direction: Axis.horizontal,
                              lineLength: double.infinity,
                              lineThickness: 3.0,
                              dashLength: 2.0,
                              dashColor: Colors.black,
                              dashGapLength: 2.0,
                            )
                          ],
                        )
                      : SizedBox();
                },
                itemCount: 20),
          )
        ],
      ),
    );
  }
}

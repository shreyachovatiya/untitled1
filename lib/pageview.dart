import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  List color = [
    Colors.red,
    Colors.green,
    Colors.blue,
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      select = value;
                    });
                  },
                  // scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 250,
                      width: double.infinity,
                      color: color[index],
                    );
                  },
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        height: 7,
                        width: 7,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color:
                                select == index ? Colors.orange : Colors.white,
                            shape: BoxShape.circle),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.transparent,
                        child: Icon(Icons.arrow_back),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.transparent,
                        child: Icon(Icons.favorite_border),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

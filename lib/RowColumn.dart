import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 120,
                  color: Colors.yellow,
                ),
                Container(
                  height: 200,
                  width: 120,
                  color: Colors.pink,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 120,
                        color:Colors.black,
                      ),
                      Container(
                        height: 50,
                        width: 120,
                        color:Colors.lightBlue,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 60,
                              color: Colors.yellow,
                            ),
                            Container(
                              height: 100,
                              width: 60,
                              color: Colors.teal,
                            ),
                          ],
                        ),
                        height: 100,
                        width: 120,
                        color:Colors.deepOrange,
                      ),
                    ],
                  ),
                  height: 200,
                  width: 120,
                  color: Colors.brown,
                ),
              ],
            ),
            height: 200,
            width: 360,
            color: Colors.black,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              color: Colors.lightBlue,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              color: Colors.black,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              color: Colors.white,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              color: Colors.pink,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              color: Colors.indigo,
                            ),
                          ],
                        ),
                        height: 200,
                        width: 40,
                        color: Colors.green,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              color: Colors.green,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              color: Colors.pink,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              color: Colors.teal,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              color: Colors.black,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                        height: 200,
                        width: 40,
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                  height: 200,
                  width: 80,
                  color: Colors.black,
                ),
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.purple,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 60,
                              color: Colors.lightBlueAccent,
                            ),
                            Container(
                              height: 100,
                              width: 60,
                              color: Colors.black,
                            ),
                            Container(
                              height: 100,
                              width: 60,
                              color: Colors.orangeAccent,
                            ),
                          ],
                        ),
                        height:100,
                        width: 180,
                        color:Colors.black,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 60,
                              color: Colors.orange,
                            ),
                            Container(
                              height: 100,
                              width: 60,
                              color: Colors.green,
                            ),
                            Container(
                              height: 100,
                              width: 60,
                              color: Colors.indigo,
                            ),
                          ],
                        ),
                          height:100,
                          width: 180,
                          color:Colors.yellow,
                      ),
                    ],
                  ),
                  height: 200,
                  width: 180,
                  color: Colors.tealAccent,
                ),
              ],
            ),
            height: 200,
            width: 360,
            color: Colors.lightGreen,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  height: 136,
                  width: 140,
                  color: Colors.black,
                ),
                Container(
                  height: 136,
                  width: 140,
                  color: Colors.yellowAccent,
                ),
                Container(
                  height: 136,
                  width: 80,
                  color: Colors.cyanAccent,
                ),
              ],
            ),
            height: 136,
            width: 360,
            color: Colors.pink,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 136,
                        width: 40,
                        color: Colors.green,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 34,
                              width: 40,
                              color: Colors.brown,
                            ),
                            Container(
                              height: 34,
                              width: 40,
                              color: Colors.deepOrange,
                            ),
                            Container(
                              height: 34,
                              width: 40,
                              color: Colors.purple,
                            ),
                            Container(
                              height: 34,
                              width: 40,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        height: 136,
                        width: 40,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  height: 136,
                  width: 80,
                  color: Colors.orangeAccent,
                ),
                Container(
                  height: 136,
                  width: 120,
                  color: Colors.lightBlueAccent,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 34,
                              width: 53,
                              color: Colors.green,
                            ),
                            Container(
                              height: 34,
                              width: 53,
                              color: Colors.deepOrange,
                            ),
                            Container(
                              height: 34,
                              width: 53,
                              color: Colors.black,
                            ),
                            Container(
                              height: 34,
                              width: 53,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                        height: 136,
                        width: 53,
                        color:Colors.purple,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 34,
                              width: 53,
                              color: Colors.pink,
                            ),
                            Container(
                              height: 34,
                              width: 53,
                              color: Colors.yellowAccent,
                            ),
                            Container(
                              height: 34,
                              width: 53,
                              color: Colors.green,
                            ),
                            Container(
                              height: 34,
                              width: 53,
                              color: Colors.indigo,
                            ),
                          ],
                        ),
                        height: 136,
                        width: 53,
                        color:Colors.amber,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 34,
                              width: 53,
                              color: Colors.black,
                            ),
                            Container(
                              height: 34,
                              width: 53,
                              color: Colors.orange,
                            ),
                            Container(
                              height: 34,
                              width: 53,
                              color: Colors.brown,
                            ),
                            Container(
                              height: 34,
                              width: 53,
                              color: Colors.cyanAccent,
                            ),
                          ],
                        ),
                        height: 136,
                        width: 53,
                        color:Colors.lightBlueAccent,
                      ),
                    ],
                  ),
                  height: 136,
                  width: 160,
                  color: Colors.black,
                ),
              ],
            ),
            height: 136,
            width: 360,
            color: Colors.yellow,
          ),
        ],
      ),
    );

  }
}

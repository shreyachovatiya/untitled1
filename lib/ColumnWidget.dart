import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
           Container(
             child: Column(
               children: [
                 Container(
                   height: 30,
                   width: 100,
                   color: Colors.black,
                 ),
                 Container(
                   height: 30,
                   width: 100,
                   color: Colors.grey,
                 ),
                 Container(
                   height: 30,
                   width: 100,
                   color: Colors.pink,
                 ),
                 Container(
                   height: 30,
                   width: 100,
                   color: Colors.lightGreen,
                 ),
               ],
             ),
             height: 120,
             width: 100,
             color: Colors.pinkAccent
           ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 33,
                        color: Colors.deepOrange,
                      ),
                      Container(
                        height: 120,
                        width: 33,
                        color: Colors.teal,
                      ),
                      Container(
                        height: 120,
                        width: 33,
                        color: Colors.black,
                      ),
                    ],
                  ),
                    height: 120,
                    width: 100,
                    color: Colors.black
                ),
                Container(
                  child:Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 24,
                              width: 50,
                              color: Colors.green,
                            ),
                            Container(
                              height: 24,
                              width: 50,
                              color: Colors.deepOrange,
                            ),
                            Container(
                              height: 24,
                              width: 50,
                              color: Colors.cyanAccent,
                            ),
                            Container(
                              height: 24,
                              width: 50,
                              color: Colors.pink,
                            ),
                            Container(
                              height: 24,
                              width: 50,
                              color: Colors.indigoAccent,
                            ),
                          ],
                        ),
                        height: 120,
                        width: 50,
                        color: Colors.amber,
                      ),
                      Container(
                        child:Column(
                          children: [
                            Container(
                              height: 24,
                              width: 50,
                              color: Colors.pinkAccent,
                            ),
                            Container(
                              height: 24,
                              width: 50,
                              color: Colors.amber,
                            ),
                            Container(
                              height: 24,
                              width: 50,
                              color: Colors.purple,
                            ),
                            Container(
                              height: 24,
                              width: 50,
                              color: Colors.black,
                            ),
                            Container(
                              height: 24,
                              width: 50,
                              color: Colors.brown,
                            ),
                          ],
                        ),
                        height: 120,
                        width: 50,
                        color: Colors.black,
                      ),
                    ],
                  ),
                    height: 120,
                    width: 100,
                    color: Colors.cyan
                ),
           ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      color: Colors.black,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      color: Colors.amber,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      color: Colors.lightBlueAccent,
                    ),
                  ],
                ),
                height: 120,
                width: 100,
                color: Colors.amber,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.yellow,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.green,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.purpleAccent,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.lightBlueAccent,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.indigo,
                          ),
                        ],
                      ),
                      height: 120,
                      width: 50,
                      color: Colors.pink,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.pinkAccent,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.lightBlueAccent,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.black,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.lightGreen,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.tealAccent,
                          ),
                        ],
                      ),
                      height: 120,
                      width: 50,
                      color: Colors.black,
                    ),
                  ],
                ),
                height: 120,
                width: 100,
                color: Colors.lightGreen,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width:33,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      height: 120,
                      width:33,
                      color: Colors.brown,
                    ),
                    Container(
                      height: 120,
                      width:34,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                height: 120,
                width: 100,
                color: Colors.deepOrange,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 33,
                      color: Colors.lightGreenAccent,
                    ),
                    Container(
                      height: 120,
                      width: 33,
                      color: Colors.pinkAccent,
                    ),
                    Container(
                      height: 120,
                      width: 33,
                      color: Colors.indigo,
                    ),
                  ],
                ),
                height: 120,
                width: 100,
                color: Colors.cyanAccent,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                    height: 30,
                    width: 100,
                    color: Colors.orange,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      color: Colors.lightGreen,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      color: Colors.purple,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      color: Colors.deepOrange,
                    ),
                  ],
                ),
                height: 120,
                width: 100,
                color: Colors.brown,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.teal,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.black,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.pink,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.lightBlueAccent,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.orangeAccent,
                          ),
                        ],
                      ),
                      height: 120,
                      width: 50,
                      color: Colors.pink,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.lightGreenAccent,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.brown,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.amber,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.red,
                          ),
                          Container(
                            height: 24,
                            width: 50,
                            color: Colors.lightGreen,
                          ),
                        ],
                      ),
                      height: 120,
                      width: 50,
                      color: Colors.black,
                    ),
                  ],
                ),
                height: 120,
                width: 100,
                color: Colors.greenAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

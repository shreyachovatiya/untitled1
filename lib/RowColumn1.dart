import 'package:flutter/material.dart';

class RowColumn1 extends StatelessWidget {
  const RowColumn1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 112,
                                    width: 45,
                                    color: Colors.green,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 56,
                                          width: 45,
                                          color: Colors.amber,
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 56,
                                                width: 22,
                                                color: Colors.deepOrange,
                                              ),
                                            ],
                                          ),
                                          height: 56,
                                          width: 45,
                                          color: Colors.brown,
                                        ),
                                      ],
                                    ),
                                    height: 112,
                                    width: 45,
                                    color: Colors.pink,
                                  ),
                                ],
                              ),
                              height: 112,
                              width: 90,
                              color: Colors.yellowAccent,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 90,
                                    color: Colors.yellowAccent,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 56,
                                          width: 30,
                                          color: Colors.black,
                                        ),
                                        Container(
                                          height: 56,
                                          width: 30,
                                          color: Colors.green,
                                        ),
                                      ],
                                    ),
                                    height: 56,
                                    width: 90,
                                    color: Colors.pink,
                                  ),
                                ],
                              ),
                              height: 112,
                              width: 90,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        height: 224,
                        width: 90,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                  height: 224,
                  width: 180,
                  color:Colors.cyanAccent
                ),
                Container(
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 56,
                                      width: 30,
                                      color: Colors.purpleAccent,
                                    ),
                                  ],
                                ),
                                height: 56,
                                width: 90,
                                color: Colors.amber,
                              ),
                              Container(
                                height: 112,
                                width: 90,
                                color: Colors.green,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height:56,
                                      width: 45,
                                      color: Colors.pink,
                                    ),
                                  ],
                                ),
                                height: 56,
                                width: 90,
                                color: Colors.cyan,
                              ),
                            ],
                          ),
                          height: 224,
                          width: 90,
                          color: Colors.brown,
                        ),
                        Container(
                          child:Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 112,
                                      width: 45,
                                      color: Colors.indigo,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 56,
                                            width: 45,
                                            color: Colors.purple,
                                          ),
                                        ],
                                      ),
                                      height: 112,
                                      width: 45,
                                      color: Colors.amber,
                                    ),
                                  ],
                                ),
                                height: 112,
                                width: 90,
                                color: Colors.deepOrange,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 56,
                                      width: 90,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                                height: 112,
                                width: 90,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          height: 224,
                          width: 90,
                          color: Colors.purpleAccent,
                        ),
                      ],
                    ),
                    height: 224,
                    width: 180,
                    color:Colors.indigo
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 112,
                        width: 180,
                        color:Colors.amber,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 90,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 56,
                                          width: 30,
                                          color: Colors.red,
                                        ),
                                        Container(
                                          height: 56,
                                          width: 30,
                                          color: Colors.green,
                                        ),
                                      ],
                                    ),
                                    height: 56,
                                    width: 90,
                                    color: Colors.amber,
                                  ),
                                ],
                              ),
                              height: 112,
                              width: 90,
                              color: Colors.green,
                            ),
                            Container(
                              height: 112,
                              width: 90,
                              color: Colors.purple,
                            ),
                          ],
                        ),
                        height: 112,
                        width: 180,
                        color:Colors.black,
                      ),
                    ],
                  ),
                    height: 224,
                    width: 180,
                    color:Colors.amber
                ),
              ],
            ),
            height: 672,
            width: 180,
            color: Colors.pink,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 112,
                              width: 90,
                              color: Colors.yellow,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 45,
                                    color: Colors.brown,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 28,
                                          width: 45,
                                          color: Colors.cyan,
                                        ),
                                      ],
                                    ),
                                    height: 56,
                                    width: 45,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 90,
                              color: Colors.deepOrange,
                            ),
                          ],
                        ),
                        height: 168,
                        width: 90,
                        color: Colors.brown,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 56,
                              width: 90,
                              color: Colors.black,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 112,
                                    width: 45,
                                    color: Colors.lightGreen,
                                  ),
                                ],
                              ),
                              height: 112,
                              width: 90,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                        height: 168,
                        width: 90,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                  height: 168,
                  width: 180,
                  color: Colors.yellowAccent,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 84,
                        width: 180,
                        color: Colors.orange,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 90,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              height: 84,
                              width: 90,
                              color: Colors.brown,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 84,
                                    width: 45,
                                    color: Colors.pink,
                                  ),
                                ],
                              ),
                              height: 84,
                              width: 90,
                              color: Colors.cyan,
                            ),
                          ],
                        ),
                        height: 84,
                        width: 180,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  height: 168,
                  width: 180,
                  color: Colors.green,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 84,
                              width: 90,
                              color: Colors.green,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 84,
                                    width: 45,
                                    color: Colors.cyan,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 42,
                                          width: 45,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                    height: 84,
                                    width: 45,
                                    color: Colors.deepOrange,
                                  ),
                                ],
                              ),
                              height: 84,
                              width: 90,
                              color: Colors.deepOrange,
                            ),
                          ],
                        ),
                        height: 168,
                        width: 90,
                        color: Colors.lightGreen,
                      ),
                    ],
                  ),
                  height: 168,
                  width: 180,
                  color: Colors.amberAccent,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 84,
                              width: 60,
                              color: Colors.lightGreenAccent,
                            ),
                            Container(
                              height: 84,
                              width: 60,
                              color: Colors.black,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 60,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              height: 84,
                              width: 60,
                              color: Colors.lightGreenAccent,
                            ),
                          ],
                        ),
                        height: 84,
                        width: 180,
                        color: Colors.black,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 90,
                                    color: Colors.cyanAccent,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 42,
                                          width: 45,
                                          color: Colors.orange,
                                        ),
                                      ],
                                    ),
                                    height: 42,
                                    width: 90,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              height: 84,
                              width: 90,
                              color: Colors.deepOrange,
                            ),
                          ],
                        ),
                        height: 84,
                        width: 180,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                  height: 168,
                  width: 180,
                  color: Colors.brown,
                ),
              ],
            ),
            height: 672,
            width: 180,
            color: Colors.black,
          ),
        ],
      ),
    );

  }
}

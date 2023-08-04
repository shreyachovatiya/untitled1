import 'package:flutter/material.dart';

class RowColumn2 extends StatelessWidget {
  const RowColumn2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                              height: 168,
                              width: 60,
                              color: Colors.pink,
                              child: Column(
                                children: [
                                  SizedBox(height: 20),
                                  Container(width: 30,height: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.yellow)),
                                  SizedBox(height: 20),
                                  Container(width: 30,height: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                                  SizedBox(height: 20),
                                  Container(width: 30,height: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.green),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 60,
                                    color: Colors.yellow,
                                  ),
                                  Container(
                                    height: 56,
                                    width: 60,
                                    color: Colors.purpleAccent,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 56,
                                          width: 30,
                                          color: Colors.black,),
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 28,
                                                width: 30,
                                                color: Colors.orange,
                                              ),
                                            ],
                                          ),
                                          height: 56,
                                          width: 30,
                                          color: Colors.brown,),
                                      ],
                                    ),
                                    height: 56,
                                    width: 60,
                                    color: Colors.cyan,
                                  ),
                                ],
                              ),
                              height: 168,
                              width: 60,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        height: 168,
                        width: 120,
                        color: Colors.brown,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 84,
                              width: 120,
                              color: Colors.cyan,
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
                                                height: 42,
                                                width: 30,
                                                color: Colors.yellow,
                                              ),
                                            ],
                                          ),
                                          height: 42,
                                          width: 60,
                                          color: Colors.black,
                                        ),
                                        Container(
                                          height: 21,
                                          width: 60,
                                          color: Colors.cyan,
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 21,
                                                width: 20,
                                                color: Colors.orange,
                                              ),
                                              Container(
                                                height: 21,
                                                width: 20,
                                                color: Colors.brown,
                                              ),
                                            ],
                                          ),
                                          height: 21,
                                          width: 60,
                                          color: Colors.lightGreen,
                                        ),
                                      ],
                                    ),
                                    height: 84,
                                    width: 60,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                              height: 84,
                              width: 120,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                        height: 168,
                        width: 120,
                        color: Colors.amberAccent,
                      ),
                    ],
                  ),
                  height: 336,
                  width: 120,
                  color: Colors.amber,
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
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 56,
                                          width: 30,
                                          color: Colors.pink,
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 28,
                                                width: 30,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                          height: 56,
                                          width: 30,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    height: 56,
                                    width: 60,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              height: 112,
                              width: 60,
                              color: Colors.cyan,
                            ),
                            Container(
                              height: 112,
                              width: 60,
                              color: Colors.yellowAccent,
                            ),
                          ],
                        ),
                        height: 112,
                        width: 120,
                        color: Colors.orange,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 56,
                              width: 120,
                              color: Colors.red,
                              child: Row(
                                children: [
                                  SizedBox(width: 10),
                                 Container(
                                   height: 30,width: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                                 ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 30,width: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.green),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 30,width: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 40,
                                    color: Colors.green,
                                  ),
                                  Container(
                                    height: 56,
                                    width: 40,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 120,
                              color: Colors.amberAccent,
                            ),
                          ],
                        ),
                        height: 112,
                        width: 120,
                        color: Colors.black,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 112,
                              width: 60,
                              color: Colors.yellow,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 60,
                                    color: Colors.brown,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 56,
                                          width: 30,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                    height: 56,
                                    width: 60,
                                    color: Colors.cyan,
                                  ),
                                ],
                              ),
                              height: 112,
                              width: 60,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                        height: 112,
                        width: 120,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                  height: 336,
                  width: 120,
                  color: Colors.green,
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
                                    height: 56,
                                    width: 60,
                                    color: Colors.purpleAccent,
                                  ),
                                ],
                              ),
                              height: 112,
                              width: 60,
                              color: Colors.black,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 112,
                                    width: 30,
                                    color: Colors.yellow,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 56,
                                          width: 30,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                    height: 112,
                                    width: 30,
                                    color: Colors.greenAccent,
                                  ),
                                ],
                              ),
                              height: 112,
                              width: 60,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        height: 112,
                        width: 120,
                        color: Colors.cyan,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 75,
                                    width: 60,
                                    color: Colors.cyan,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 20),
                                        Container(height: 30, width: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                                        SizedBox(height: 10),
                                        Container(height: 30, width: 30, decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.redAccent),),
                                        SizedBox(height: 10),
                                        Container(height: 30, width: 30, decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.greenAccent),),
                                      ],
                                    ),
                                    height: 149,
                                    width: 60,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              height: 224,
                              width: 60,
                              color: Colors.lightGreen,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 112,
                                    width: 60,
                                    color: Colors.pink,
                                  ),
                                ],
                              ),
                              height: 224,
                              width: 60,
                              color: Colors.purple,
                            ),
                          ],
                        ),
                        height: 224,
                        width: 120,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                  height: 336,
                  width: 120,
                  color: Colors.purpleAccent,
                ),
              ],
            ),
            height: 336,
            width: 360,
            color: Colors.black,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 112,
                        width: 180,
                        color: Colors.green,
                        child:Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 90,
                                    color: Colors.indigo,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 28,
                                                width: 45,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                          height: 28,
                                          width: 90,
                                          color: Colors.purple,
                                        ),
                                      ],
                                    ),
                                    height: 56,
                                    width: 90,
                                    color: Colors.greenAccent,
                                  ),
                                ],
                              ),
                          height: 56,
                          width: 180,
                          color: Colors.black,
                        ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 60,
                                    color: Colors.pink,
                                  ),
                                  Container(
                                    height: 56,
                                    width: 60,
                                    color: Colors.yellowAccent,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 180,
                              color: Colors.red,
                            ),
                          ],
                        ) ,
                      ),
                      Container(
                        height: 112,
                        width: 90,
                        color: Colors.orangeAccent,
                        ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(width: 10),
                                  Container(height: 20,width: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),),
                                  SizedBox(width: 5),
                                  Container(height: 20,width: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),),
                                  SizedBox(width: 5),
                                  Container(height: 20,width: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.brown),),
                                ],
                              ),
                              height: 56,
                              width: 90,
                              color: Colors.lightGreenAccent,
                            ),
                            Container(
                              child: Row(
                                children: [
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
                                    color: Colors.pinkAccent,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 90,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        height: 112,
                        width: 90,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                  height: 112,
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
                                    height: 56,
                                    width: 30,
                                    color: Colors.yellowAccent,
                                  ),
                                ],
                              ),
                              height: 112,
                              width: 30,
                              color: Colors.black,
                            ),
                            Container(
                              height: 112,
                              width: 30,
                              color: Colors.purpleAccent,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 60,
                                    color: Colors.blue,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 56,
                                          width: 30,
                                          color: Colors.orange,
                                        ),
                                      ],
                                    ),
                                    height: 56,
                                    width: 60,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              height: 112,
                              width: 60,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        height: 112,
                        width: 120,
                        color: Colors.lightGreen,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 28,
                                    width: 40,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              height: 28,
                              width: 120,
                              color: Colors.green,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 28,
                                    width: 80,
                                    color: Colors.lightGreenAccent,
                                  ),
                                ],
                              ),
                              height: 28,
                              width: 120,
                              color: Colors.purple,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 60,
                                    color: Colors.pink,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 120,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        height: 112,
                        width: 120,
                        color: Colors.pink,
                      ),
                      Container(
                        height: 112,
                        width: 120,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                  height: 112,
                  width: 360,
                  color: Colors.cyan,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 56,
                              width: 120,
                              color: Colors.yellowAccent,
                            ),
                            Container(
                              height: 56,
                              width: 120,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        height: 56,
                        width: 360,
                        color: Colors.pinkAccent,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 28,
                                    width: 180,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 28,
                                          width: 60,
                                          color: Colors.pink,
                                        ),
                                        Container(
                                          height: 28,
                                          width: 60,
                                          color: Colors.green,
                                        ),
                                      ],
                                    ),
                                    height: 28,
                                    width: 180,
                                    color: Colors.blueGrey,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 180,
                              color: Colors.blueGrey,
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
                                                height: 28,
                                                width: 30,
                                                color: Colors.deepOrange,
                                              ),
                                            ],
                                          ),
                                          height: 28,
                                          width: 90,
                                          color: Colors.blue,
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 28,
                                                width: 60,
                                                color: Colors.purple,
                                              ),
                                            ],
                                          ),
                                          height: 28,
                                          width: 90,
                                          color: Colors.yellowAccent,
                                        ),
                                      ],
                                    ),
                                    height: 56,
                                    width: 90,
                                    color: Colors.amber,
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
                                                color: Colors.blueGrey,
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 28,
                                                      width: 22,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                                height: 28,
                                                width: 45,
                                                color: Colors.deepOrange,
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
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 180,
                              color: Colors.deepOrange,
                            ),
                          ],
                        ),
                        height: 56,
                        width: 360,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  height: 112,
                  width: 360,
                  color: Colors.brown,
                ),
              ],
            ),
            height: 336,
            width: 360,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}

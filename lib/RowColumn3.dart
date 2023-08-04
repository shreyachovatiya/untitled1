import 'package:flutter/material.dart';

class RowColumn3 extends StatelessWidget {
  const RowColumn3({Key? key}) : super(key: key);

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
                              child: Column(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 60,
                                    color: Colors.green,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 42,
                                          width: 30,
                                          color: Colors.pink,
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 21,
                                                width: 30,
                                                color: Colors.brown,
                                              ),
                                            ],
                                          ),
                                          height: 42,
                                          width: 30,
                                          color: Colors.cyan,
                                        ),
                                      ],
                                    ),
                                    height: 42,
                                    width: 60,
                                    color: Colors.orange,
                                  ),
                                ],
                              ),
                              height: 84,
                              width: 60,
                              color: Colors.deepOrange,
                            ),
                          ],
                        ),
                        height: 84,
                        width: 120,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 42,
                        width: 120,
                        color: Colors.black,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 21,
                                    width: 40,
                                    color: Colors.greenAccent,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 21,
                                          width: 13,
                                          color: Colors.blue,
                                        ),
                                        Container(
                                          height: 21,
                                          width: 13,
                                          color: Colors.purple,
                                        ),
                                      ],
                                    ),
                                    height: 21,
                                    width: 40,
                                    color: Colors.redAccent,
                                  ),
                                ],
                              ),
                              height: 42,
                              width: 40,
                              color: Colors.red,
                            ),
                            Container(
                              height: 42,
                              width: 40,
                              color: Colors.yellowAccent,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 21,
                                    width: 40,
                                    color: Colors.cyan,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 21,
                                          width: 20,
                                          color: Colors.lightGreen,
                                        ),
                                      ],
                                    ),
                                    height: 21,
                                    width: 40,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              height: 42,
                              width: 40,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        height: 42,
                        width: 120,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                  height: 168,
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
                                height: 56,
                                width: 60,
                                color: Colors.orange
                            ),
                            Container(
                                height: 56,
                                width: 60,
                                color: Colors.brown
                            ),
                            Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 56,
                                      width: 30,
                                      color: Colors.yellowAccent,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 28,
                                            width: 30,
                                            color: Colors.cyan,
                                          ),
                                        ],
                                      ),
                                      height: 56,
                                      width: 30,
                                      color: Colors.pinkAccent,
                                    ),
                                  ],
                                ),
                                height: 56,
                                width: 60,
                                color: Colors.pink
                            ),
                          ],
                        ),
                        height: 168,
                        width: 60,
                        color: Colors.purple,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 84,
                                    width: 30,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    height: 28,
                                    width: 30,
                                    color: Colors.orange,
                                  ),
                                  Container(
                                    height: 28,
                                    width: 30,
                                    color: Colors.yellowAccent,
                                  ),
                                  Container(
                                    height: 28,
                                    width: 30,
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                              height: 168,
                              width: 30,
                              color: Colors.pink,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 30,
                                    color: Colors.cyanAccent,
                                  ),
                                  Container(
                                    height: 56,
                                    width: 30,
                                    color: Colors.purpleAccent,
                                  ),
                                ],
                              ),
                              height: 168,
                              width: 30,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        height: 168,
                        width: 60,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  height: 168,
                  width: 120,
                  color: Colors.pink,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 56,
                              width: 60,
                              color: Colors.yellowAccent,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 28,
                                          width: 30,
                                          color: Colors.green,
                                        ),
                                      ],
                                    ),
                                    height: 28,
                                    width: 60,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 60,
                              color: Colors.cyan,
                            ),
                          ],
                        ),
                        height: 56,
                        width: 120,
                        color: Colors.black,
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
                                    color: Colors.cyanAccent,
                                  ),
                                  Container(
                                    height: 28,
                                    width: 40,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              height: 28,
                              width: 120,
                              color: Colors.red,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 14,
                                          width: 60,
                                          color: Colors.purple,
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 14,
                                                width: 30,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                          height: 14,
                                          width: 60,
                                          color: Colors.amber,
                                        ),
                                      ],
                                    ),
                                    height: 28,
                                    width: 60,
                                    color: Colors.yellowAccent,
                                  ),
                                ],
                              ),
                              height: 28,
                              width: 120,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        height: 56,
                        width: 120,
                        color: Colors.orange,
                      ),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(shape: BoxShape.circle,
                                  color: Colors.cyanAccent),),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(shape: BoxShape.circle,
                                  color: Colors.green),),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(shape: BoxShape.circle,
                                  color: Colors.white),),
                          ],
                        ),
                        height: 56,
                        width: 120,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  height: 168,
                  width: 120,
                  color: Colors.yellowAccent,
                ),
              ],
            ),
            height: 168,
            width: 360,
            color: Colors.purple,
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
                              child: Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 45,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 21,
                                          width: 45,
                                          color: Colors.cyanAccent,
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 21,
                                                width: 22,
                                                color: Colors.pink,
                                              ),
                                            ],
                                          ),
                                          height: 21,
                                          width: 45,
                                          color: Colors.orange,
                                        ),
                                      ],
                                    ),
                                    height: 42,
                                    width: 45,
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                              height: 42,
                              width: 90,
                              color: Colors.blue,
                            ),
                            Container(
                              height: 42,
                              width: 90,
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
                                          width: 45,
                                          color: Colors.green,
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 21,
                                                width: 45,
                                                color: Colors.pink,
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 21,
                                                      width: 22,
                                                      color: Colors.blue,
                                                    ),
                                                  ],
                                                ),
                                                height: 21,
                                                width: 45,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                          height: 42,
                                          width: 45,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                    height: 84,
                                    width: 45,
                                    color: Colors.blueGrey,
                                  ),
                                ],
                              ),
                              height: 84,
                              width: 90,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        height: 168,
                        width: 90,
                        color: Colors.green,
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 15,),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(shape: BoxShape.circle,
                                  color: Colors.white),),
                            SizedBox(height: 10,),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(shape: BoxShape.circle,
                                  color: Colors.amber),),
                            SizedBox(height: 15,),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(shape: BoxShape.circle,
                                  color: Colors.black),),
                          ],
                        ),
                        height: 168,
                        width: 90,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                  height: 168,
                  width: 180,
                  color: Colors.white,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 56,
                              width: 90,
                              color: Colors.yellowAccent,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 28,
                                    width: 90,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                            height: 28,
                                            width: 30,
                                            color: Colors.red
                                        ),
                                        Container(
                                            height: 28,
                                            width: 30,
                                            color: Colors.green
                                        ),
                                      ],
                                    ),
                                    height: 28,
                                    width: 90,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 90,
                              color: Colors.green,
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
                                color: Colors.black
                            ),
                            Container(
                                child: Row(
                                  children: [
                                    SizedBox(width: 5),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),),
                                    SizedBox(width: 5),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),),
                                    SizedBox(width: 5),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.deepOrange),),
                                  ],
                                ),
                                height: 56,
                                width: 80,
                                color: Colors.cyan
                            ),
                          ],
                        ),
                        height: 56,
                        width: 180,
                        color: Colors.pinkAccent,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepOrange),),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black),),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),),
                                ],
                              ),
                              height: 56,
                              width: 135,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        height: 56,
                        width: 180,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  height: 168,
                  width: 180,
                  color: Colors.blueGrey,
                ),
              ],
            ),
            height: 168,
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
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 28,
                                          width: 30,
                                          color: Colors.pink,
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 14,
                                                width: 30,
                                                color: Colors.cyan,
                                              ),
                                            ],
                                          ),
                                          height: 28,
                                          width: 30,
                                          color: Colors.yellowAccent,
                                        ),
                                      ],
                                    ),
                                    height: 28,
                                    width: 60,
                                    color: Colors.brown,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 60,
                              color: Colors.green,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(height: 5,),
                                  Container(height: 30,width: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.purple),),
                                  SizedBox(height: 5,),
                                  Container(height: 30,width: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),),
                                  SizedBox(height: 5,),
                                  Container(height: 30,width: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.green),),
                                ],
                              ),
                              height: 112,
                              width: 60,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        height: 168,
                        width: 60,
                        color: Colors.pinkAccent,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(height: 5,),
                                  Container(height: 30,width: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.green),),
                                  SizedBox(height: 5,),
                                  Container(height: 30,width: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                                  SizedBox(height: 5,),
                                  Container(height: 30,width: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),),
                                ],
                              ),
                              height: 112,
                              width: 60,
                              color: Colors.pink
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 30,
                                    color: Colors.green,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 28,
                                          width: 30,
                                          color: Colors.yellow,
                                        ),
                                      ],
                                    ),
                                    height: 56,
                                    width: 30,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                                height:56,
                                width: 60,
                                color: Colors.brown
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
                        child: Row(
                          children: [
                            Container(
                              height: 56,
                              width: 60,
                              color: Colors.amberAccent,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 28,
                                    width: 60,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                  height: 14,
                                                  width:30,
                                                  color: Colors.white,
                                              ),
                                            ],
                                          ),
                                          height: 28,
                                          width: 30,
                                          color: Colors.green,
                                        ),
                                      ],
                                    ),
                                    height: 28,
                                    width: 60,
                                    color: Colors.pink,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 60,
                              color: Colors.brown,
                            ),
                          ],
                        ),
                        height: 56,
                        width: 120,
                        color: Colors.brown,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 56,
                              width: 40,
                              color: Colors.black,
                            ),
                            Container(
                              height: 56,
                              width: 40,
                              color: Colors.brown,
                            ),
                          ],
                        ),
                        height: 56,
                        width: 120,
                        color: Colors.cyan,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 56,
                              width: 60,
                              color: Colors.deepOrange,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 28,
                                          width: 30,
                                          color: Colors.lightGreen,
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 14,
                                                width: 30,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                          height: 28,
                                          width: 30,
                                          color: Colors.yellowAccent,
                                        ),
                                      ],
                                    ),
                                    height: 28,
                                    width: 60,
                                    color: Colors.amber,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 60,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        height: 56,
                        width: 120,
                        color: Colors.pinkAccent,
                      ),
                    ],
                  ),
                  height: 168,
                  width: 120,
                  color: Colors.blue,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.yellowAccent),),
                      SizedBox(height: 10),
                      Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),),
                      SizedBox(height: 10),
                      Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                    ],
                  ),
                  height: 168,
                  width: 120,
                  color: Colors.purple,
                ),
              ],
            ),
            height: 168,
            width: 360,
            color: Colors.pink,
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
                        color: Colors.purple,
                      ),
                      Container(
                        height: 56,
                        width: 90,
                        color: Colors.greenAccent,
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
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        height: 56,
                        width: 90,
                        color: Colors.amberAccent,
                      ),
                    ],
                  ),
                  height: 168,
                  width: 90,
                  color: Colors.cyan,
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
                                    height: 42,
                                    width: 45,
                                    color: Colors.pink,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 21,
                                                width: 22,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                          height: 42,
                                          width: 22,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                    height: 42,
                                    width: 45,
                                    color: Colors.yellowAccent,
                                  ),
                                ],
                              ),
                              height: 84,
                              width: 45,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        height: 84,
                        width: 90,
                        color: Colors.brown,
                      ),
                      Container(
                        height: 42,
                        width: 90,
                        color: Colors.black,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 42,
                              width: 45,
                              color: Colors.pinkAccent,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 21,
                                    width: 45,
                                    color: Colors.orange,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 21,
                                          width: 22,
                                          color: Colors.green,
                                        ),
                                      ],
                                    ),
                                    height: 21,
                                    width: 45,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                              height: 42,
                              width: 45,
                              color: Colors.greenAccent,
                            ),
                          ],
                        ),
                        height: 42,
                        width: 90,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  height: 168,
                  width: 90,
                  color: Colors.pink,
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
                            Container(height: 20,width: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                            SizedBox(width: 5),
                            Container(height: 20,width: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pink),),
                          ],
                        ),
                        height: 56,
                        width: 90,
                        color: Colors.cyan,
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
                                    color: Colors.green,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 28,
                                          width: 22,
                                          color: Colors.yellowAccent,
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 14,
                                                width: 22,
                                                color: Colors.purple,
                                              ),
                                            ],
                                          ),
                                          height: 28,
                                          width: 22,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                    height: 28,
                                    width: 45,
                                    color: Colors.purple,
                                  ),
                                ],
                              ),
                              height: 56,
                              width: 45,
                              color: Colors.yellowAccent,
                            ),
                          ],
                        ),
                        height: 56,
                        width: 90,
                        color: Colors.red,
                      ),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Container(height: 20,width: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.purple),),
                            SizedBox(width: 5,),
                            Container(height: 20,width: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.yellowAccent),),
                            SizedBox(width: 5,),
                            Container(height: 20,width: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),),
                          ],
                        ),
                        height: 56,
                        width: 90,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  height: 168,
                  width: 90,
                  color: Colors.amber,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.yellowAccent),),
                      SizedBox(height: 10),
                      Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pink),),
                      SizedBox(height: 10),
                      Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                    ],
                  ),
                  height: 168,
                  width: 90,
                  color: Colors.brown,
                ),
              ],
            ),
            height: 168,
            width: 360,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
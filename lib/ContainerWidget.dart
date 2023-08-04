import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Center(child: Text("hello",style:TextStyle(fontSize: 30,color: Colors.black),)),
          height:200,
          width:200,
          // alignment: Alignment.center,
          // padding: EdgeInsets.all (60),
          decoration: BoxDecoration(
            color: Colors.red,
           // shape: BoxShape.circle
           borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            ),
            border: Border.all(
              color: Colors.black,
              width:5,
            ),
            boxShadow: [BoxShadow(
              color: Colors.pink,
              offset: Offset(4,4),
              blurRadius: 5,
              spreadRadius: 5,
            )],
             gradient: LinearGradient(
               colors: [Colors.indigo,Colors.lightBlueAccent,Colors.white,Colors.lightGreenAccent,Colors.teal,],
               begin: Alignment.bottomLeft,
               end: Alignment.topRight,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        //crossAxisAlignment: CrossAxisAlignment.end,
       children:[
         Container(
           height: 100,
           width: 100,
           color: Colors.purple,
         ),
         Container(
           height: 100,
           width: 100,
           color: Colors.lightGreenAccent,
         ),
         Container(
           height: 100,
           width: 100,
           color: Colors.pinkAccent,
           ),
       ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class IconWidget1 extends StatelessWidget {
  const IconWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 448,
                  width: 170,
                  color: Colors.cyan,
                ),
                SizedBox(width: 10),
                Container(
                  height: 448,
                  width: 160,
                  color: Colors.brown,
                ),
                SizedBox(width: 10,),
              ],
            ),
            height: 438,
            width:360,
            color: Colors.white,
          ),
          SizedBox(height: 10,),
          SizedBox(width: 10,),
          Container(
            height: 204,
            width:340,
            color: Colors.amber,
          ),
          SizedBox(width: 10,),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

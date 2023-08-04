import 'package:flutter/material.dart';

import 'IdCard1.dart';

class AssetsImageWidget extends StatelessWidget {
  const AssetsImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IdCard1(),
                ),
              );
            },
            icon: Icon(Icons.arrow_back),
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.red,
            child: Image.network(
              'https://images.pexels.com/photos/1661179/pexels-photo-1661179.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              //fit: BoxFit.fill,

              color: Colors.black,
              colorBlendMode: BlendMode.color,
            ),
          ),
        ],
      ),
    );
  }
}

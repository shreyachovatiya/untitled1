import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatefulWidget {
  const GridViewBuilderDemo({Key? key}) : super(key: key);

  @override
  State<GridViewBuilderDemo> createState() => _GridViewBuilderDemoState();
}

class _GridViewBuilderDemoState extends State<GridViewBuilderDemo> {
  List<Map<String, dynamic>> data = [
    {
      "image": "assets/images/facebook.png",
      "name": "Lemon",
      "subname": "Bergamo Italy",
      "price": 1.10,
      "discount": 2
    },
    {
      "image": "assets/images/facebook.png",
      "name": "Lemon",
      "subname": "Bergamo Italy",
      "price": 1.10,
      "discount": 2
    },
    {
      "image": "assets/images/facebook.png",
      "name": "Lemon",
      "subname": "Bergamo Italy",
      "price": 1.10,
      "discount": 2
    },
    {
      "image": "assets/images/facebook.png",
      "name": "Lemon",
      "subname": "Bergamo Italy",
      "price": 1.10,
      "discount": 2
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        data[index]["image"],
                        scale: 8,
                      ),
                    ),
                    Text("${data[index]["name"]}")
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

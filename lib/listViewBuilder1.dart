import 'package:flutter/material.dart';

class ListViewBuilderWidget1 extends StatelessWidget {
  const ListViewBuilderWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> name = [
      'shreya',
      'mansi',
      'kinjal',
      'nikita',
      'nimita',
      'urvi',
      'dhruvi'
    ];
    List c = [
      Colors.green,
      Colors.blue,
      Colors.amberAccent,
      Colors.deepOrange,
      Colors.purple,
      Colors.teal,
      Colors.brown
    ];

    List images = [
      "assets/images/1.jpg",
      "assets/images/facebook.png",
      "assets/images/linkedin.png",
      "assets/images/twitter.png",
      "assets/images/1.jpg",
      "assets/images/facebook.png",
      "assets/images/linkedin.png",
      "assets/images/twitter.png"
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 100,
                    color: c[index],
                    child: Center(
                      child: Text(
                        "${name[index]}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: c.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 150,
                    color: c[index],
                    child: Center(child: Image.asset(images[index])),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 300,
                    color: c[index],
                    child: Center(
                      child: Text("${name[index]}"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

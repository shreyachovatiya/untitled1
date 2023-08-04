import 'package:flutter/material.dart';

class ListviewBuilderWidget extends StatelessWidget {
  const ListviewBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> name = [
      "shreya",
      "mansi",
      "mital",
      "ravina",
      "mahima",
      "tanvi",
      "shital"
    ];

    List c = [Colors.green, Colors.red, Colors.green];
    List images = ["dsfghjk", "szdfxcgvhb", "sdfghjb"];
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    color: Colors.red,
                    child: Center(
                      child: Text("${name[index]}"),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 400,
              child: ListView.builder(
                //scrollDirection: Axis.vertical,
                itemCount: 120,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    color: Colors.green,
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

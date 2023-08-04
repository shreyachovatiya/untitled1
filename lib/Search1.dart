import 'package:flutter/material.dart';

class Serch1page extends StatefulWidget {
  const Serch1page({Key? key}) : super(key: key);

  @override
  State<Serch1page> createState() => _Serch1pageState();
}

class _Serch1pageState extends State<Serch1page> {
  TextEditingController namecontroller = TextEditingController();

  List name = [
    "Shreya",
    "Mansi",
    "Nikita",
    "Nimita",
    "Kinjal",
    "Dhruvi",
    "Krupa",
    "Khushi",
    "Janki",
    "Priya",
    "Pooja",
    "Princy"
  ];
  List addData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 50),
            TextField(
              onChanged: (value) {
                setState(
                  () {
                    addData.clear();
                  },
                );
                name.forEach(
                  (element) {
                    if (element.contains(value)) {
                      addData.add(element);
                    }
                  },
                );
              },
              controller: namecontroller,
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            namecontroller.text == ""
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: name.length,
                    itemBuilder: (context, index) {
                      return Text("${name[index]}");
                    },
                  )
                : ListView.builder(
                    itemCount: addData.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Text("${addData[index]}");
                    },
                  )
          ],
        ),
      ),
    );
  }
}

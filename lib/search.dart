import 'package:flutter/material.dart';

class SearchDemo extends StatefulWidget {
  const SearchDemo({Key? key}) : super(key: key);

  @override
  State<SearchDemo> createState() => _SearchDemoState();
}

class _SearchDemoState extends State<SearchDemo> {
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
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    addData.clear();
                  });
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
                      shrinkWrap: true,
                      itemCount: addData.length,
                      itemBuilder: (context, index) {
                        return Text("${addData[index]}");
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

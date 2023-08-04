import 'package:flutter/material.dart';

class Future1Page extends StatefulWidget {
  const Future1Page({Key? key}) : super(key: key);

  @override
  State<Future1Page> createState() => _Future1PageState();
}

class _Future1PageState extends State<Future1Page> {
  List<Map<String, dynamic>> detail = [
    {
      "Name": "Shreya",
      "Lastname": "Chovatiya",
      "Number": 7834829489,
      "City": "Surat"
    },
    {
      "Name": "Mansi",
      "Lastname": "Sakariya",
      "Number": 8809945353,
      "City": "Surat"
    },
    {
      "Name": "Nikita",
      "Lastname": "Patel",
      "Number": 9876543210,
      "City": "Surat"
    }
  ];
  Future getdata() async {
    print("Hello");

    await Future.delayed(
      Duration(seconds: 1),
    );

    print("Hello Shreya");

    return detail;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getdata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: detail.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name : ${detail[index]["Name"]}"),
                      Text(detail[index]["Lastname"]),
                      Text(detail[index]["Number"].toString()),
                      Text(detail[index]["City"]),
                      SizedBox(height: 10),
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Something went Wrong"),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

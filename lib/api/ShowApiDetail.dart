import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;

class ShowApiDetail extends StatefulWidget {
  const ShowApiDetail({Key? key, required this.id}) : super(key: key);
  final id;

  @override
  State<ShowApiDetail> createState() => _ShowApiDetailState();
}

class _ShowApiDetailState extends State<ShowApiDetail> {
  var data;
  Future Getdata() async {
    https.Response response = await https.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/${widget.id}"));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print("RESPONES ${response.body}");
    } else {
      print("STATUS CODE ${response.statusCode}");
    }
    return data!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Getdata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("UserID : ${snapshot.data!["userId"]}"),
                  Text("id : ${snapshot.data!["id"]}"),
                  Text("title : ${snapshot.data!["title"]}"),
                  Text("body : ${snapshot.data!["body"]}"),
                  const SizedBox(height: 20),
                ],
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

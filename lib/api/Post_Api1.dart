import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostApi1Page extends StatefulWidget {
  const PostApi1Page({Key? key}) : super(key: key);

  @override
  State<PostApi1Page> createState() => _PostApi1PageState();
}

class _PostApi1PageState extends State<PostApi1Page> {
  var data;
  bool loading = false;
  // Map<String, dynamic> List = {"FirstName": "Shreya", "LastName": "chovatiya"};

  Future postdata() async {
    setState(() {
      loading = true;
    });
    http.Response response = await http.post(
      Uri.parse("https://dummyjson.com/products/add"),
      body: {
        "title": "Shreya",
        "price": "500",
        "description": "lorem ipsum set",
        "category": "electronic",
      },
    );
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print("RESPONSE${response.body}");
      setState(() {
        loading = false;
        // print("${List}");
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Product Sucessfully Added")));
    } else {
      print("STATUS CODE ${response.statusCode}");
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Error")));
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loading
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: ElevatedButton(
                onPressed: () {
                  postdata();
                },
                child: Text("Add"),
              ),
            ),
    );
  }
}

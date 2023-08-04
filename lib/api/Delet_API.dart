import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class DeletApiPage extends StatefulWidget {
  const DeletApiPage({Key? key}) : super(key: key);
  @override
  State<DeletApiPage> createState() => _DeletApiPageState();
}

class _DeletApiPageState extends State<DeletApiPage> {
  var data;
  bool loading = false;
  Future deletedata() async {
    setState(
      () {
        loading = true;
      },
    );
    http.Response response = await http.delete(
      Uri.parse("https://dummyjson.com/products/1"),
    );
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print("RESPONSE${response.body}");
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Sucessfully deleted")));
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
                  deletedata();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                child: Text("Delete"),
              ),
            ),
    );
  }
}

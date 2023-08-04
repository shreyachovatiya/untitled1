import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class PutApiPage extends StatefulWidget {
  const PutApiPage({Key? key}) : super(key: key);

  @override
  State<PutApiPage> createState() => _PutApiPageState();
}

class _PutApiPageState extends State<PutApiPage> {
  var data;
  bool loading = false;
  Future putdata() async {
    setState(() {
      loading = true;
    });
    http.Response response = await http.put(
      Uri.parse("https://dummyjson.com/products/1"),
      body: {"title": "iPhone14", "stock": "100", "price": "300"},
    );
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print("RESPONSE${response.body}");
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Product Sucessfully Updated")));
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
                  putdata();
                },
                child: Text("Update"),
              ),
            ),
    );
  }
}

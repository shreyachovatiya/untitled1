import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PatchAPIPage extends StatefulWidget {
  const PatchAPIPage({Key? key}) : super(key: key);

  @override
  State<PatchAPIPage> createState() => _PatchAPIPageState();
}

class _PatchAPIPageState extends State<PatchAPIPage> {
  var data;
  bool loading = false;
  Map<String, dynamic> body = {
    "id": "2",
    "title": "iPhone 14",
    "stock": "70",
    "price": "500"
  };
  Future patchdata() async {
    setState(() {
      loading = true;
    });
    http.Response response = await http.patch(
      Uri.parse("https://dummyjson.com/products/2"),
      body: body,
    );
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print("RESPONSE${response.body}");
      setState(() {
        loading = false;
        print(body);
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
                  patchdata();
                },
                child: Text("Update"),
              ),
            ),
    );
  }
}

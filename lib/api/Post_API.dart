import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;

class PostAPIpage extends StatefulWidget {
  const PostAPIpage({Key? key}) : super(key: key);

  @override
  State<PostAPIpage> createState() => _PostAPIpageState();
}

class _PostAPIpageState extends State<PostAPIpage> {
  var data;
  bool loading = false;
  Future postdata() async {
    setState(() {
      loading = true;
    });
    https.Response response = await https.post(
      Uri.parse("https://dummyjson.com/products/add"),
      body: {
        "title": "wertyui",
      },
    );
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print("RESPONES ${response.body}");
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Product Added Successfully')));
    } else {
      print("STATUS CODE ${response.statusCode}");
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('ERROR')));
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
                  child: Text('Add Products')),
            ),
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WithoutFutureBuilderDemo extends StatefulWidget {
  const WithoutFutureBuilderDemo({Key? key}) : super(key: key);

  @override
  State<WithoutFutureBuilderDemo> createState() =>
      _WithoutFutureBuilderDemoState();
}

class _WithoutFutureBuilderDemoState extends State<WithoutFutureBuilderDemo> {
  var data;
  bool loading = false;
  String error = '';

  Future getdata(String value) async {
    setState(() {
      loading = true;
    });
    http.Response response = await http
        .get(Uri.parse("https://dummyjson.com/products/search?q=$value"));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      setState(() {
        loading = false;
      });
      print("RESPONSE ${response.body}");
    } else {
      print("STATUS CODE ${response.statusCode}");

      setState(() {
        loading = false;
        error = "Something went wrong";
      });
    }
  }

  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getdata(search.text);
        },
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: search,
                  decoration: InputDecoration(
                    hintText: "Search",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    constraints: BoxConstraints.expand(height: 50, width: 300),
                  ),
                ),
                loading
                    ? CircularProgressIndicator()
                    : error != ''
                        ? Text(error)
                        : data == null
                            ? Text("No Data")
                            : data['total'] == 0
                                ? Text("No Match Found")
                                : Column(
                                    children: List.generate(
                                      data["products"].length,
                                      (index) => Column(
                                        children: [
                                          Text(
                                              "${data["products"][index]["title"]}"),
                                          Text(
                                              "${data["products"][index]["price"]}"),
                                          Text(
                                              "${data["products"][index]["description"]}"),
                                          Text(
                                              "${data["products"][index]["category"]}"),
                                          Text(
                                              "${data["products"][index]["rating"]}"),
                                          Text(
                                              "${data["products"][index]["stock"]}"),
                                          Text(
                                              "${data["products"][index]["stock"]}"),
                                        ],
                                      ),
                                    ),
                                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

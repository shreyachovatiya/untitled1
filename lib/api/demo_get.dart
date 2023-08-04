import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'ShowApiDetail.dart';

class GetDemoApi extends StatefulWidget {
  const GetDemoApi({Key? key}) : super(key: key);

  @override
  State<GetDemoApi> createState() => _GetDemoApiState();
}

class _GetDemoApiState extends State<GetDemoApi> {
  int select = 0;
  var data;

  Future getData() async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print("RESPONSE ${response.body}");
    } else {
      print("STATUS CODE ${response.statusCode}");
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Center(
                  child: InkResponse(
                    onTap: () {
                      setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ShowApiDetail(id: snapshot.data[index]['id']),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text("id : ${snapshot.data[index]["id"]}"),
                    ),
                  ),
                );
              },
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

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;
import 'package:untitled1/Model/Response/post_response_model.dart';

class GetApiPage extends StatefulWidget {
  const GetApiPage({Key? key}) : super(key: key);

  @override
  State<GetApiPage> createState() => _GetApiPageState();
}

class _GetApiPageState extends State<GetApiPage> {
  List<PostResponseModel>? postResponseModel;

  Future<List<PostResponseModel>> Getdata() async {
    https.Response response = await https
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if (response.statusCode == 200) {
      postResponseModel = postResponseModelFromJson(response.body);

      print("RESPONES ${response.body}");
    } else {
      print("STATUS CODE ${response.statusCode}");
    }
    return postResponseModel!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<PostResponseModel>>(
        future: Getdata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("UserID : ${snapshot.data![index].userId}"),
                      Text("id : ${snapshot.data![index].id}"),
                      Text("title : ${snapshot.data![index].title}"),
                      Text("body : ${snapshot.data![index].body}"),
                      SizedBox(height: 20),
                    ],
                  ),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

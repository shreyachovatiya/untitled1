import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;
import 'package:untitled1/ApiServices/Repo/Get_Products_Repo1.dart';
import 'package:untitled1/Model/Response/post_response_model.dart';

class GetApiPage1 extends StatefulWidget {
  const GetApiPage1({Key? key}) : super(key: key);

  @override
  State<GetApiPage1> createState() => _GetApiPage1State();
}

class _GetApiPage1State extends State<GetApiPage1> {
  List<PostResponseModel>? postResponseModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<PostResponseModel>>(
        future: GetProdutcsRepo1.getProductsRepo1(),
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

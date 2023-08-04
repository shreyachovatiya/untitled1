import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../ApiServices/Api_Routes1.dart';
import '4_CategoryWiseDetail.dart';

class ProductDetail1 extends StatefulWidget {
  const ProductDetail1({Key? key}) : super(key: key);

  @override
  State<ProductDetail1> createState() => _ProductDetail1State();
}

class _ProductDetail1State extends State<ProductDetail1> {
  List categories = [
    "smartphones",
    "laptops",
    "fragrances",
    "skincare",
    "groceries",
    "home-decoration",
    "furniture",
    "tops",
    "womens-dresses",
    "womens-shoes",
    "mens-shirts",
    "mens-shoes",
    "mens-watches",
    "womens-watches",
    "womens-bags",
    "womens-jewellery",
    "sunglasses",
    "automotive",
    "motorcycle",
    "lighting"
  ];
  var data;
  Future getdata() async {
    http.Response response = await http.get(Uri.parse(ApiRoutes1.getProducts));
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
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                "All Categories",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: FutureBuilder(
                future: getdata(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 50,
                              width: 300,
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.purple.shade100,
                                border: Border.all(),
                              ),
                              child: Center(
                                  child: InkResponse(
                                      onTap: () {
                                        setState(
                                          () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    CategorywiseDetail(
                                                        Category: snapshot
                                                            .data![index]),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Text("${categories[index]}"))),
                            ),
                          ],
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text("Something went Wrong"),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

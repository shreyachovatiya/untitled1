import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '2_ProductDetail.dart';
import '3_All_Categories_.dart';

class Product_API_Example1 extends StatefulWidget {
  const Product_API_Example1({Key? key}) : super(key: key);

  @override
  State<Product_API_Example1> createState() => _Product_API_Example1State();
}

class _Product_API_Example1State extends State<Product_API_Example1> {
  var data;

  Future<List> getdata() async {
    http.Response response =
        await http.get(Uri.parse("https://dummyjson.com/products/categories"));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print("RESPONSE ${response.body}");
    } else {
      print("STATUS CODE ${response.statusCode}");
    }
    return data;
  }

  Future<Map<String, dynamic>> getdata1() async {
    http.Response response =
        await http.get(Uri.parse("https://dummyjson.com/products"));
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  InkResponse(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetail1()),
                        );
                      });
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FutureBuilder<List>(
              future: getdata(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: List.generate(
                        4,
                        (index) => Container(
                          height: 40,
                          width: 75,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12)),
                          child: Center(
                            child: Text(
                              "${snapshot.data![index]}",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    "products",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: FutureBuilder<Map<String, dynamic>>(
                future: getdata1(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data!["products"].length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.60,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              //color: Colors.grey,
                              border: Border.all(color: Colors.black12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkResponse(
                                onTap: () {
                                  setState(() {});
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductDetail(
                                        image: snapshot.data!["products"][index]
                                            ["id"],
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 128,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "${snapshot.data!["products"][index]["thumbnail"]}"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                              Text(
                                "Title : ${snapshot.data!["products"][index]["title"]}",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                  "Description : ${snapshot.data!["products"][index]["description"]}",
                                  style: TextStyle(fontSize: 12)),
                              Text(
                                  "category: ${snapshot.data!["products"][index]["category"]}",
                                  style: TextStyle(fontSize: 12)),
                            ],
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
            )
          ],
        ),
      ),
    );
  }
}

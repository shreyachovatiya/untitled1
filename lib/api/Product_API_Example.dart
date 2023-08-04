import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '2_ProductDetail.dart';

class ProductAPIExample extends StatefulWidget {
  const ProductAPIExample({Key? key}) : super(key: key);

  @override
  State<ProductAPIExample> createState() => _ProductAPIExampleState();
}

class _ProductAPIExampleState extends State<ProductAPIExample> {
  var data;
  Future getdata() async {
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
        body: FutureBuilder(
      future: getdata(),
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
                childAspectRatio: 0.60),
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
                              image: snapshot.data["products"][index]["id"],
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
    ));
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key, this.image}) : super(key: key);
  final image;
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  var data;
  Future Getdata() async {
    https.Response response = await https
        .get(Uri.parse("https://dummyjson.com/products/${widget.image}"));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print("RESPONES ${response.body}");
    } else {
      print("STATUS CODE ${response.statusCode}");
    }
    return data!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Getdata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: 400,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!["images"].length,
                    itemBuilder: (context, index) {
                      return Image.network(
                        "${snapshot.data["images"][index]}",
                        fit: BoxFit.fill,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Title : ${snapshot.data!["id"]}"),
                      Text("Description : ${snapshot.data!["description"]}"),
                      Text("Price : ${snapshot.data!["price"]}"),
                      Text(
                          "DiscountPercentage : ${snapshot.data!["discountPercentage"]}"),
                      Text("Rating : ${snapshot.data!["rating"]}"),
                      Text("Stock : ${snapshot.data!["stock"]}"),
                      Text("Brand : ${snapshot.data!["brand"]}"),
                      Text("Category : ${snapshot.data!["category"]}"),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

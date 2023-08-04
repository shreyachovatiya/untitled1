import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MediaQueryDemo extends StatefulWidget {
  const MediaQueryDemo({Key? key}) : super(key: key);

  @override
  State<MediaQueryDemo> createState() => _MediaQueryDemoState();
}

class _MediaQueryDemoState extends State<MediaQueryDemo> {
  List icons = [
    Icons.message,
    Icons.call,
    Icons.video_camera_back,
    Icons.info_outline
  ];
  List<Map<String, dynamic>> data = [
    {
      "images":
          "https://images.unsplash.com/photo-1612021470627-ca1cb2d2ee92?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmlsZGVyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
      "title": "Shreya",
      "subtitle": "Hello",
      "time": "12:00 pm",
    },
    {
      "images":
          "https://media.istockphoto.com/id/1386156141/photo/the-night-view-of-the-city-in-front-of-the-asphalt-road.jpg?b=1&s=170667a&w=0&k=20&c=4GQMyc40vH3zSnBrdBSp8jwWE6BM3EPMUmxHQRhlXB4=",
      "title": "Mansi",
      "subtitle": "Hi mansi",
      "time": "10:30 Am",
    },
    {
      "images":
          "https://images.unsplash.com/photo-1449034446853-66c86144b0ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&w=1000&q=80",
      "title": "Kinjal",
      "subtitle": "Good morning",
      "time": "Today",
    },
    {
      "images":
          "https://images.unsplash.com/photo-1619678953821-428aa1408222?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dGhlJTIwc3VufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
      "title": "Nikita",
      "subtitle": "How are you?",
      "time": "Today",
    },
    {
      "images":
          "https://media.istockphoto.com/id/1316357239/photo/mini-island-micro-paradise.jpg?b=1&s=170667a&w=0&k=20&c=5coND_g8QupPX3cwLEN16c1crL3FsTVTzbzCy5yOnmc=",
      "title": "Mom",
      "subtitle": "Hi mumma",
      "time": "Yesterday",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3_JWTS-XZXcsed_aUk7nPRc1ca6qIQGfLag&usqp=CAU",
      "title": "Bro",
      "subtitle": "Hello bro",
      "time": "Last week",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb73XL8-SqbnKndfWHJhfBOB6R-ToZFap8Gw&usqp=CAU",
      "title": "Papa",
      "subtitle": "Jay shree krishna",
      "time": "Last week",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt8SLE8BGh3NeiPqGWTBrOMsKCbaUAQ8FpWA&usqp=CAU",
      "title": "dhruvi",
      "subtitle": "Hello dhruvi",
      "time": "02/04/23",
    },
    {
      "images":
          "https://media.istockphoto.com/id/1392137349/photo/iao-needle-state-monument-in-maui-hawaii.jpg?b=1&s=170667a&w=0&k=20&c=X9bbKhkU_hTjDgX4gov2WilYab_dVNeD3wXGKtlOGBc=",
      "title": "Rudra",
      "subtitle": "Hi bro",
      "time": "01/04/23",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhGOtZ8f6sWV61xkM7eR9hSgJuyzrbIrwzpQ&usqp=CAU",
      "title": "khushi",
      "subtitle": "hey",
      "time": "31/03/23",
    },
    {
      "images":
          "https://media.istockphoto.com/id/1395461893/photo/hand-growth-improvement-arrow-up-success-business-profit-background-of-goal-forward.jpg?b=1&s=170667a&w=0&k=20&c=oTM4wHVR-GWInY3P9ddFAXvfRCmbmKRHCzytHQKs0JQ=",
      "title": "krupa",
      "subtitle": "Hi krupa",
      "time": "last month",
    },
    {
      "images":
          "https://media.istockphoto.com/id/1437821026/photo/city-skyline-and-modern-buildings-in-guangzhou.jpg?b=1&s=170667a&w=0&k=20&c=XAwaGH_adAActpm58XVjVufw2fS0pDAzeASrnMluh54=",
      "title": "Nimita",
      "subtitle": "Hello",
      "time": "last month",
    }
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: InkResponse(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            insetPadding: EdgeInsets.only(top: 80),
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 50.h,
                              width: width * 0.5,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: NetworkImage(data[index]["images"]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 300,
                                    color: Colors.white38,
                                    child: Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Text(
                                          data[index]["title"],
                                          style: TextStyle(
                                            color: Colors.white,
                                            // letterSpacing: 2
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 50,
                                    width: 300,
                                    color: Colors.white,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: List.generate(
                                              4,
                                              (index) => Icon(
                                                    icons[index],
                                                    color: Colors.teal,
                                                  ))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage(data[index]["images"], scale: 5),
                    ),
                  ),
                  //minVerticalPadding: 20,
                  title: Text(
                    data[index]["title"],
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  subtitle: Text(data[index]["subtitle"]),
                  trailing: Text(data[index]["time"]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class IdCard extends StatelessWidget {
  const IdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 224,
            width: 400,
            color: Colors.blueGrey,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 336,
                    width: 400,
                    color: Colors.white,
                    child:
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: (EdgeInsets.only(left: 100,top: 80)),
                            child: Text("Flutter Developer",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Text("Name:"),
                              SizedBox(width: 30,),
                              Container(
                                height: 30,
                                width: 200,
                                color: Colors.blueGrey,
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Dob:"),
                              SizedBox(width: 45),
                              Container(
                                height: 30,
                                width: 200,
                                color: Colors.blueGrey,
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Email:"),
                              SizedBox(width: 35),
                              Container(
                                height: 30,
                                width: 200,
                                color: Colors.blueGrey,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text("Mobile:"),
                              SizedBox(width: 25),
                              Container(
                                height: 30,
                                width: 200,
                                color: Colors.blueGrey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
                 Positioned(
                  top: -80,
                    left: 100,
                    child: Center(
                        child: Container(
                            height: 150,
                            width: 150,
                            decoration:
                                  BoxDecoration(shape: BoxShape.circle, color: Colors.black,
                                      image: DecorationImage(image: AssetImage("assets/images/1.jpg"),fit: BoxFit.cover),),
                       ),
                    ),
                 ),
            ],
          ),
          Container(
            height: 112,
            width: 400,
            color: Colors.blueGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/facebook.png",scale: 10,),
                Image.asset("assets/images/linkedin.png",scale: 10,),
                Image.asset("assets/images/twitter.png",scale: 10,),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

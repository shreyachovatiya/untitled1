import 'package:flutter/material.dart';

class IdCard1 extends StatelessWidget {
  const IdCard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 224,
            width: 400,
            color: Colors.teal,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 336,
                width: 400,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 90,),
                      Center(
                        child: Text("Flutter developer",style: TextStyle(
                          fontSize: 20,
                        )),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text("Name :"),
                          SizedBox(width: 30),
                          Container(
                            height: 30,
                            width: 200,
                            color: Colors.blueGrey,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(children: [
                        Text("Dob :"),
                        SizedBox(width: 43),
                        Container(
                          height: 30,
                          width: 200,
                          color: Colors.blueGrey,
                        ),
                      ],),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Email :"),
                          SizedBox(width: 32,),
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
                          Text("Mobile :"),
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
              Positioned(
                left: 100,top: -70,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black,
                  image: DecorationImage(image: AssetImage("assets/images/1.jpg"),fit: BoxFit.cover)
                  ),
                ),
              ),

            ],
          ),
          Container(
            height: 112,
            width: 400,
            color: Colors.blueGrey,
            child: Padding(
              padding:EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 80),
                  Image.asset("assets/images/facebook.png",scale: 10,),
                  SizedBox(width: 20),
                  Image.asset("assets/images/linkedin.png",scale: 10,),
                  SizedBox(width: 20),
                  Image.asset("assets/images/twitter.png",scale: 10,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

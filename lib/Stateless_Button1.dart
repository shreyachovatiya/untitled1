import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: MaterialButton(
                  height: 50,
                  minWidth: 200,
                  color: Colors.indigo,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 10,
                  splashColor: Colors.yellowAccent,
                  child: Text(
                    "Log in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {},
                child: Text("Click"),
              ),
              SizedBox(height: 10),
              TextButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {},
                  child: Text("Show")),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {},
                child: Text("Click here"),
              ),
              SizedBox(height: 10),
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              SizedBox(height: 10),
              InkResponse(
                onTap: () {},
                child: Icon(Icons.remove_circle_outline),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

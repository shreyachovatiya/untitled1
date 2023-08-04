import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              height: 50,
              minWidth: 300,
              color: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 10,
              splashColor: Colors.green,
              child: Text(
                "Log In",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: Text("Click"),
          ),
          SizedBox(height: 5),
          TextButton(
            //style laine jem elevated button ma jem aave e lai levanu
            onPressed: () {},
            child: Text("Show"),
          ),
          SizedBox(height: 5),
          OutlinedButton(
            //same as textbutton
            onPressed: () {},
            child: Text("Click Here"),
          ),
          SizedBox(height: 5),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
          SizedBox(height: 5),
          InkResponse(
            onTap: () {},
            child: Icon(
              Icons.remove,
            ),
          ),
          SizedBox(height: 5),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

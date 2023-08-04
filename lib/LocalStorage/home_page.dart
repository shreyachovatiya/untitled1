import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'login_page.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Home Page",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  // box.erase();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage1()));
                },
                child: Text("Logout")),
          ],
        ),
      ),
    );
  }
}

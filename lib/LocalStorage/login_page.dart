import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'HomePage_self.dart';
import 'home_page.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({Key? key}) : super(key: key);

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Page",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () async {
                var UserId = await box.read("UserId");
                print("UserId : $UserId");
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage1()));
              },
              child: Text("Log in"),
            ),
          ],
        ),
      ),
    );
  }
}

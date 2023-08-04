import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'home_page.dart';

class RegistrationPage1 extends StatefulWidget {
  const RegistrationPage1({Key? key}) : super(key: key);

  @override
  State<RegistrationPage1> createState() => _RegistrationPage1State();
}

class _RegistrationPage1State extends State<RegistrationPage1> {
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Registration Page",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () async {
                await box.write("UserId", "12345");
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage1()),
                );
              },
              child: Text("Registration"),
            ),
          ],
        ),
      ),
    );
  }
}

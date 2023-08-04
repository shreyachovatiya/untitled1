import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get_storage/get_storage.dart';
import 'HomePage_self.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController idcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Login Page",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 50),
                TextField(
                  controller: idcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Enter id",
                    constraints: BoxConstraints.expand(height: 60, width: 320),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Enter name",
                    constraints: BoxConstraints.expand(height: 60, width: 320),
                  ),
                ),
                SizedBox(height: 300),
                ElevatedButton(
                  onPressed: () async {
                    var Uid = await box.read("Uid");
                    print("ID ${Uid}");
                    if (Uid == idcontroller.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    } else {
                      Get.showSnackbar(
                        GetSnackBar(
                          message: "Invalid UserId",
                        ),
                      );
                    }
                  },
                  child: Text("Log in"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextFormField1 extends StatefulWidget {
  const TextFormField1({Key? key}) : super(key: key);

  @override
  State<TextFormField1> createState() => _TextFormField1State();
}

class _TextFormField1State extends State<TextFormField1> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  String Email = "abc123@gmail.com";
  String Password = "Abc123@123";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  bool validEmail = RegExp(
                          "[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$")
                      .hasMatch(value!);
                  if (validEmail) {
                    return null;
                  } else {
                    return "email must be required";
                  }
                },
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                validator: (value) {
                  bool validPass = RegExp(
                          "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}")
                      .hasMatch(value!);
                  if (validPass) {
                    return null;
                  } else {
                    return "password must be requird";
                  }
                },
                controller: passcontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              MaterialButton(
                height: 50,
                minWidth: 300,
                color: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Log in",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    if (Email == emailController.text &&
                        Password == passcontroller.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Center(
                            child: Text("Successfull"),
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Invalid Information")),
                      );
                    }
                  }
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

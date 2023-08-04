import 'package:flutter/material.dart';

class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String Email = "abc123@gmail.com";
  String Password = "Abc123@123";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  bool validEmail = RegExp(
                          "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$")
                      .hasMatch(value!);
                  if (validEmail) {
                    return null;
                  } else {
                    return "email must be required";
                  }
                },
                controller: emailcontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 50),
              MaterialButton(
                height: 50,
                minWidth: 300,
                color: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Log in",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (Email == emailcontroller.text &&
                        Password == passcontroller.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Center(
                            child: Text("Succesfull"),
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Invalid Crediential"),
                        ),
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

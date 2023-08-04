import 'package:flutter/material.dart';
import 'package:untitled1/ApiServices/Repo/post_login_repo.dart';
import 'get_product_repo.dart';
import 'login_response_model.dart';

class PostLoginApiDemo extends StatefulWidget {
  const PostLoginApiDemo({Key? key}) : super(key: key);

  @override
  State<PostLoginApiDemo> createState() => _PostLoginApiDemoState();
}

class _PostLoginApiDemoState extends State<PostLoginApiDemo> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Enter email",
                    constraints: BoxConstraints.expand(height: 50, width: 320),
                  ),
                  controller: emailController,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Enter password",
                    constraints: BoxConstraints.expand(height: 50, width: 320),
                  ),
                  controller: passwordController,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      PostLoginRepo.postLoginRepo(
                          emailController.text, passwordController.text);
                    },
                    child: Text("Add")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

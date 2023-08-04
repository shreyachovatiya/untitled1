import 'package:flutter/material.dart';
import 'package:untitled1/Common_Button.dart';

class CommonButtonPractice extends StatefulWidget {
  const CommonButtonPractice({Key? key}) : super(key: key);

  @override
  State<CommonButtonPractice> createState() => _CommonButtonPracticeState();
}

class _CommonButtonPracticeState extends State<CommonButtonPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CommonButton1(
              color: Colors.grey,
              onpress: () {},
              text: Text("Sign in"),
            ),
          ),
        ],
      ),
    );
  }
}

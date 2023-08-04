import 'package:flutter/material.dart';
import 'package:untitled1/common_textfield.dart';

class TextFieldPractice extends StatefulWidget {
  const TextFieldPractice({Key? key}) : super(key: key);

  @override
  State<TextFieldPractice> createState() => _TextFieldPracticeState();
}

class _TextFieldPracticeState extends State<TextFieldPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonTextField(
              obsecure: false,
              hint: "Name",
            ),
          ],
        ),
      ),
    );
  }
}

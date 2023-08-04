import 'package:flutter/material.dart';

class DropDownButtonDemo extends StatefulWidget {
  const DropDownButtonDemo({Key? key}) : super(key: key);

  @override
  State<DropDownButtonDemo> createState() => _DropDownButtonDemoState();
}

class _DropDownButtonDemoState extends State<DropDownButtonDemo> {
  List gender = ["Male", "Female"];
  String? select;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              isExpanded: true,
              value: select,
              hint: Text("Select Your Choice"),
              items: List.generate(
                gender.length,
                (index) => DropdownMenuItem(
                  value: gender[index],
                  child: Text("${gender[index]}"),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  select = value as String;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

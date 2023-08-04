import 'package:flutter/material.dart';

class DropDownButton1 extends StatefulWidget {
  const DropDownButton1({Key? key}) : super(key: key);

  @override
  State<DropDownButton1> createState() => _DropDownButton1State();
}

class _DropDownButton1State extends State<DropDownButton1> {
  List food = ["Burger", "Pizza", "Sandwich", "Frankie", "None of this"];
  String? select;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              isExpanded: true,
              value: select,
              hint: Text("Select your Choice"),
              items: List.generate(
                food.length,
                (index) => DropdownMenuItem(
                  value: food[index],
                  child: Text(food[index]),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  select = value as String;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

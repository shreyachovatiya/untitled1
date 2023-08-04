import 'package:flutter/material.dart';

class ToggleDemo extends StatefulWidget {
  const ToggleDemo({Key? key}) : super(key: key);

  @override
  State<ToggleDemo> createState() => _ToggleDemoState();
}

class _ToggleDemoState extends State<ToggleDemo> {
  bool islike = false;
  bool isshow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Button();
            },
          ),
          TextField(
            obscureText: isshow,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isshow = !isshow;
                  });
                },
                icon: isshow == true
                    ? Icon(Icons.visibility_off)
                    : Icon(
                        Icons.visibility,
                      ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool islike = true;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          islike = !islike;
        });
      },
      icon: islike == true
          ? Icon(
              Icons.favorite,
              color: Colors.red,
            )
          : Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
    );
  }
}

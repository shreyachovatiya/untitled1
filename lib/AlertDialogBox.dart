import 'package:flutter/material.dart';

class AlertDialogBoxPage extends StatefulWidget {
  const AlertDialogBoxPage({Key? key}) : super(key: key);

  @override
  State<AlertDialogBoxPage> createState() => _AlertDialogBoxPageState();
}

class _AlertDialogBoxPageState extends State<AlertDialogBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        //contentPadding: EdgeInsets.all(10),
                        content: Text("hello\n"
                            "Codeline"),
                      );
                    },
                  );
                },
                child: Text("click")),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ShowModelBottomSheet1 extends StatefulWidget {
  const ShowModelBottomSheet1({Key? key}) : super(key: key);

  @override
  State<ShowModelBottomSheet1> createState() => _ShowModelBottomSheet1State();
}

class _ShowModelBottomSheet1State extends State<ShowModelBottomSheet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    );
                  },
                );
              },
              child: Text("Show"),
            ),
          ),
        ],
      ),
    );
  }
}

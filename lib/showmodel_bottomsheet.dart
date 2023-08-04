import 'package:flutter/material.dart';

class ShowModelBottomSheetDemo extends StatefulWidget {
  const ShowModelBottomSheetDemo({Key? key}) : super(key: key);

  @override
  State<ShowModelBottomSheetDemo> createState() =>
      _ShowModelBottomSheetDemoState();
}

class _ShowModelBottomSheetDemoState extends State<ShowModelBottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [],
                      ),
                    );
                  },
                );
              },
              child: Text("Click"),
            ),
          ),
        ],
      ),
    );
  }
}

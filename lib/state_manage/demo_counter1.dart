import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled1/Controllers/counter_controller.dart';

class DemoCounter1Page extends StatefulWidget {
  const DemoCounter1Page({Key? key}) : super(key: key);

  @override
  State<DemoCounter1Page> createState() => _DemoCounter1PageState();
}

class _DemoCounter1PageState extends State<DemoCounter1Page> {
  CounterController counterController = Get.put(CounterController());

  Future<int> getData() async {
    await Future.delayed(Duration(seconds: 2));
    return 50;
  }

  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Text(
                    "${snapshot.data}",
                    style: TextStyle(fontSize: 20),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            GetBuilder<CounterController>(
              builder: (controller) => Text(
                "${counterController.counter}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  counterController.increment();
                },
                child: Text("Add")),
          ],
        ),
      ),
    );
  }
}

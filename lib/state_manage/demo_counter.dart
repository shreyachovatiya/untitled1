import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/Controllers/counter_controller.dart';

class DemoCounter extends StatefulWidget {
  const DemoCounter({Key? key}) : super(key: key);

  @override
  State<DemoCounter> createState() => _DemoCounterState();
}

class _DemoCounterState extends State<DemoCounter> {
  CounterController counterController = Get.put(CounterController());
  // CounterController counterController1 = Get.find();

  Future<int> getData() async {
    await Future.delayed(Duration(seconds: 2));
    return 10;
  }

  @override
  Widget build(BuildContext context) {
    print('HELLO');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Text('${snapshot.data}');
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            GetBuilder<CounterController>(
              builder: (controller) => Text('${counterController.counter}'),
            ),
            SizedBox(height: Get.width),
            ElevatedButton(
                onPressed: () {
                  // Get.showSnackbar(
                  //   GetSnackBar(
                  //     backgroundColor: Colors.green.shade300,
                  //     title: "hello",
                  //     message: "SnackBar",
                  //   ),
                  // );

                  counterController.increment();
                },
                child: Text('Add'))
          ],
        ),
      ),
    );
  }
}

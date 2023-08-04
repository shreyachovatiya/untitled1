import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class DemoStorage1 extends StatefulWidget {
  const DemoStorage1({Key? key}) : super(key: key);

  @override
  State<DemoStorage1> createState() => _DemoStorage1State();
}

class _DemoStorage1State extends State<DemoStorage1> {
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await box.write("Id", "6789");
                  await box.write("Name", "Shreya");
                },
                child: Text("Add")),
            ElevatedButton(
                onPressed: () async {
                  var Id = await box.read("Id");
                  var Name = await box.read("Name");
                  print("ID ${Id}");
                  print("Name ${Name}");
                },
                child: Text("Get")),
            ElevatedButton(
                onPressed: () async {
                  box.remove("Id");
                },
                child: Text("Remove")),
            ElevatedButton(
                onPressed: () async {
                  box.erase();
                },
                child: Text("Remove All Data")),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class DemoStorage extends StatefulWidget {
  const DemoStorage({Key? key}) : super(key: key);

  @override
  State<DemoStorage> createState() => _DemoStorageState();
}

class _DemoStorageState extends State<DemoStorage> {
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
                await box.write("uid", "123456789");
              },
              child: Text('Add'),
            ),
            ElevatedButton(
              onPressed: () async {
                var uid = await box.read(
                  "uid",
                );
                print('UID $uid');
              },
              child: Text('Get'),
            ),
            ElevatedButton(
              onPressed: () async {
                box.remove('uid');
              },
              child: Text('Remove'),
            ),
            ElevatedButton(
              onPressed: () async {
                box.erase();
              },
              child: Text('Remove'),
            ),
          ],
        ),
      ),
    );
  }
}

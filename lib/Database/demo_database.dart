import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled1/Database/task_showdatabase.dart';

class DemoDatabase extends StatefulWidget {
  const DemoDatabase({Key? key}) : super(key: key);

  @override
  State<DemoDatabase> createState() => _DemoDatabaseState();
}

class _DemoDatabaseState extends State<DemoDatabase> {
  TextEditingController idcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController valuecontroller = TextEditingController();
  TextEditingController numcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  Database? database;

  @override
  void initState() {
    createDB();
    super.initState();
  }

  Future<void> createDB() async {
    var databasesPath = await getDatabasesPath();

    String path = join(databasesPath, 'demo.db');

    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER,num REAL)');
    });
  }

  Future<void> insertData(BuildContext context) async {
    await database!.insert("Test", {
      "id": idcontroller.text,
      "name": namecontroller.text,
      "value": valuecontroller.text,
      "num": numcontroller.text,
    });

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("ADDED")));
  }

  List<Map<String, dynamic>>? data;

  Future<void> getData() async {
    data = await database!.query("Test");

    print("DATA :${data}");
  }

  // Future<void> updateData() async {
  //   await database!.update(
  //     "Test",
  //     {"value": 600},
  //     where: "id=?",
  //     whereArgs: [3],
  //   );
  // }

  // Future<void> deleteData() async {
  //   await database!.delete("Test", where: "name=?", whereArgs: ["abc"]);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await getData();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskShowDatabase(
                data: data!,
              ),
            ),
          );
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextFormField(
                controller: idcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Enter Id",
                  constraints: BoxConstraints.expand(height: 60, width: 320),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: namecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Enter Name",
                  constraints: BoxConstraints.expand(height: 60, width: 320),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: valuecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Enter Value",
                  constraints: BoxConstraints.expand(height: 60, width: 320),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: numcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Enter Num",
                  constraints: BoxConstraints.expand(height: 60, width: 320),
                ),
              ),
              SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {
                  insertData(context);
                  getData();
                },
                child: Text("Add"),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     getData();
              //   },
              //   child: Text("Get Data"),
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     insertData(context);
              //   },
              //   child: Text("Add Data"),
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     getData();
              //   },
              //   child: Text("Get Data"),
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     updateData();
              //   },
              //   child: Text("Update Data"),
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     deleteData();
              //   },
              //   child: Text("Delete Data"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

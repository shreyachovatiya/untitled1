import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled1/Database/task_showdatabase.dart';

class TaskDatabase extends StatefulWidget {
  const TaskDatabase({Key? key}) : super(key: key);

  @override
  State<TaskDatabase> createState() => _TaskDatabaseState();
}

class _TaskDatabaseState extends State<TaskDatabase> {
  TextEditingController idcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController valuecontroller = TextEditingController();
  TextEditingController numcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  Database? database;

  final box = GetStorage();

  @override
  void initState() {
    String uid = box.read(
      "uid",
    );

    print('UID $uid');

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
      "id": idcontroller,
      "name": namecontroller,
      "value": valuecontroller,
      "num": numcontroller,
    });

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("ADDED")));
  }

  Future<void> getData() async {
    List<Map<String, dynamic>> data = await database!.query("Test");

    print("DATA :${data}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SafeArea(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

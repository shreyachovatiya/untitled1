import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TaskShowDatabase extends StatefulWidget {
  const TaskShowDatabase({Key? key, required this.data}) : super(key: key);

  final List<Map<String, dynamic>> data;

  @override
  State<TaskShowDatabase> createState() => _TaskShowDatabaseState();
}

class _TaskShowDatabaseState extends State<TaskShowDatabase> {
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

  List<Map<String, dynamic>>? data;

  Future<void> getData() async {
    data = await database!.query("Test");
    print("DATA :${data}");
  }

  Future<void> updateData(
    int id,
    String name,
    int value,
    int num,
  ) async {
    await database!.update(
      "Test",
      {
        "name": name,
        "value": value,
        "num": num,
      },
      where: "id=?",
      whereArgs: [id],
    );
  }

  Future<void> deleteData(int id) async {
    await database!.delete(
      "Test",
      where: "id=?",
      whereArgs: [id],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: widget.data.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                InkResponse(
                  onTap: () {
                    namecontroller.text = widget.data[index]["name"];
                    valuecontroller.text =
                        widget.data[index]["value"].toString();
                    numcontroller.text = widget.data[index]["num"].toString();
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          alignment: Alignment.center,
                          insetPadding: EdgeInsets.only(),
                          child: Container(
                            height: 450,
                            width: 370,
                            child: Form(
                              key: formkey,
                              child: Column(
                                children: [
                                  SizedBox(height: 20),
                                  TextFormField(
                                    controller: namecontroller,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: "name",
                                      constraints: BoxConstraints.expand(
                                          height: 60, width: 320),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  TextFormField(
                                    controller: valuecontroller,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: "value",
                                      constraints: BoxConstraints.expand(
                                          height: 60, width: 320),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  TextFormField(
                                    controller: numcontroller,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: "num",
                                      constraints: BoxConstraints.expand(
                                          height: 60, width: 320),
                                    ),
                                  ),
                                  SizedBox(height: 140),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          updateData(
                                              widget.data[index]["id"],
                                              namecontroller.text,
                                              int.parse(
                                                valuecontroller.text,
                                              ),
                                              int.parse(
                                                numcontroller.text,
                                              ));
                                          getData();
                                        },
                                        child: Text("Update"),
                                      ),
                                      SizedBox(width: 10),
                                      ElevatedButton(
                                        onPressed: () {
                                          namecontroller.clear();
                                          valuecontroller.clear();
                                          numcontroller.clear();
                                          // Navigator.pop(context);
                                        },
                                        child: Text("Cancle"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Id :${widget.data[index]['id']}",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Name :${widget.data[index]['name']}",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Value :${widget.data[index]['value']}",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Num :${widget.data[index]['num']}",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                Spacer(),
                InkResponse(
                    onTap: () {
                      setState(() {});
                      deleteData(
                        widget.data[index]["id"],
                      );
                    },
                    child: Icon(Icons.delete)),
              ],
            );
          },
        ),
      ),
    );
  }
}

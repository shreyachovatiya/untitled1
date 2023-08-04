import 'package:flutter/material.dart';

class DataTableDemo extends StatefulWidget {
  const DataTableDemo({Key? key}) : super(key: key);

  @override
  State<DataTableDemo> createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  List<Map<String, dynamic>> data = [
    {
      "Name": "Shreya",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Mansi",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Anjana",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Niketa",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Kinjal",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Nimita",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Abc",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Shreya",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Mansi",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Anjana",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Niketa",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Kinjal",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Nimita",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Abc",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Shreya",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Mansi",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Anjana",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Niketa",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Kinjal",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Nimita",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
    {
      "Name": "Abc",
      "Age": 21,
      "number": 9876543210,
      "education": "b.com",
      "hobby": "Reading",
      "city": "Surat"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var columnlength = data.first.keys.toList();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                DataTable(
                  border: TableBorder.all(
                      color: Colors.red,
                      width: 2,
                      borderRadius: BorderRadius.circular(20)),
                  columnSpacing: 20,
                  dataRowColor: MaterialStateProperty.all(Colors.cyan),
                  headingRowColor: MaterialStateProperty.all(Colors.green),
                  headingRowHeight: 100,
                  dataRowHeight: 40,
                  horizontalMargin: 20,
                  columns: List.generate(
                    columnlength.length,
                    (index) => DataColumn(
                      label: Text("${columnlength[index]}"),
                    ),
                  ),
                  rows: List.generate(
                    data.length,
                    (index) => DataRow(
                      cells: List.generate(
                        columnlength.length,
                        (indes) => DataCell(
                          Text("${data[index]["${columnlength[indes]}"]}"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DataTable1Page extends StatefulWidget {
  const DataTable1Page({Key? key}) : super(key: key);

  @override
  State<DataTable1Page> createState() => _DataTable1PageState();
}

class _DataTable1PageState extends State<DataTable1Page> {
  List<Map<String, dynamic>> data = [
    {
      "Name": "Shreya",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "8947582921",
    },
    {
      "Name": "Mansi",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "8866392329",
    },
    {
      "Name": "Anjana",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "738738494",
    },
    {
      "Name": "Kinjal",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "999242442",
    },
    {
      "Name": "Nimita",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "786543392",
    },
    {
      "Name": "Nikita",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "8938583275",
    },
    {
      "Name": "Nimita",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "8947582921",
    },
    {
      "Name": "pooja",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "446232879",
    },
    {
      "Name": "Dhruvi",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "998744638",
    },
    {
      "Name": "Khushi",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "783483988",
    },
    {
      "Name": "Princy",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "278324878",
    },
    {
      "Name": "Krupa",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "9865379761",
    },
    {
      "Name": "Janki",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "8475394275",
    },
    {
      "Name": "Priya",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "8947582921",
    },
    {
      "Name": "Dhruvi",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "8947582921",
    },
    {
      "Name": "Janvi",
      "Age": "21",
      "Education": "B.com",
      "Hobby": "Reading",
      "City": "surat",
      "Mo.Number": "8947582921",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var columnlength = data.first.keys.toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              SafeArea(
                child: DataTable(
                  border: TableBorder.all(
                      color: Colors.black,
                      width: 2,
                      borderRadius: BorderRadius.circular(20)),
                  columnSpacing: 70,
                  dataRowColor: MaterialStateProperty.all(Colors.grey),
                  headingRowColor:
                      MaterialStateProperty.all(Colors.yellowAccent),
                  headingRowHeight: 80,
                  dataRowHeight: 50,
                  horizontalMargin: 20,
                  dataTextStyle: TextStyle(fontSize: 20, color: Colors.white),
                  headingTextStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.red),
                  columns: List.generate(
                      columnlength.length,
                      (index) =>
                          DataColumn(label: Text("${columnlength[index]}"))),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

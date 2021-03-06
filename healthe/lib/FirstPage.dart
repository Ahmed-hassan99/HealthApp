import 'package:flutter/material.dart';

class First extends StatelessWidget {
  final List<Map<String, String>> listOfColumns = [
    {"Date": "AAAAAA", "Systolic": "1", "Diastolic": "Yes","Pulse": "90"},
    {"Date": "BBBBBB", "Systolic": "2", "Diastolic": "no","Pulse": "90"},
    {"Date": "CCCCCC", "Systolic": "3", "Diastolic": "Yes","Pulse": "90"},
    {"Date": "CCCCCC", "Systolic": "3", "Diastolic": "Yes","Pulse": "90"},
     {"Date": "CCCCCC", "Systolic": "3", "Diastolic": "Yes","Pulse": "90"}
  ];
//  DataTableWidget(this.listOfColumns);     // Getting the data from outside, on initialization
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(label: Text('Date')),
        DataColumn(label: Text('Systolic')),
        DataColumn(label: Text('Diastolic')),
        DataColumn(label: Text('Pulse')),
      ],
      rows:
          listOfColumns // Loops through dataColumnText, each iteration assigning the value to element
              .map(
                ((element) => DataRow(
                      cells: <DataCell>[
                        DataCell(Text(element["Date"])), //Extracting from Map element the value
                        DataCell(Text(element["Systolic"])),
                        DataCell(Text(element["Diastolic"])),
                        DataCell(Text(element["Pulse"])),
                      ],
                    )),
              )
              .toList(),
    );
  }
}
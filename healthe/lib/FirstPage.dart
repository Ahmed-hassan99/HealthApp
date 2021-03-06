import 'package:flutter/material.dart';

class First extends StatelessWidget {

  @override
Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: {
        0: IntrinsicColumnWidth(),
        1: IntrinsicColumnWidth(),
        2: IntrinsicColumnWidth(),
        3: IntrinsicColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          children: [
            Text(
              'Date',
              textAlign: TextAlign.center,
            ),
            Text(
              'Sys',
              textAlign: TextAlign.center,
            ),
            Text(
              'Dia',
              textAlign: TextAlign.center,
            ),
            Text(
              'Pulse',
              textAlign: TextAlign.center,
            ),
          ],
        ),
        TableRow(

          children: [
            Text(
              'Date',
              textAlign: TextAlign.center,
            ),
            Text(
              'Sys',
              textAlign: TextAlign.center,
            ),
            Text(
              'Dia',
              textAlign: TextAlign.center,
            ),
            Text(
              'Pulse',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
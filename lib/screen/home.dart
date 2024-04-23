import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexteons_mechine_text/utils/app_font.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Table")),
      body: DataTable(
        columns: [
          DataColumn(
              label: Expanded(
                  child: Text(
            "Name",
            style: AppFont.tableHead,
          ))),
          DataColumn(
              label: Expanded(
                  child: Text(
            "UID",
            style: AppFont.tableHead,
          ))),
          DataColumn(
              label: Expanded(
                  child: Text(
            "Doc Type",
            style: AppFont.tableHead,
          ))),
          DataColumn(
              label: Expanded(
                  child: Text(
            "Image",
            style: AppFont.tableHead,
          ))),
        ],

        rows: [
          DataRow(cells: [
            DataCell(Text(
              "Java",
              style: AppFont.tableText,
            )),
            DataCell(Text("35")),
            DataCell(Text("Image")),
            DataCell(Text("url")),
          ])
        ],
      ),
    );
  }
}

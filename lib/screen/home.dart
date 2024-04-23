import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexteons_mechine_text/provider/home_provider.dart';
import 'package:nexteons_mechine_text/utils/app_font.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
       create: (context) => HomeProvider(),
      child: Consumer<HomeProvider>(
        builder: (context,data,_) {
          return Scaffold(
            appBar: AppBar(title: Text("Data Table")),
            body:data.dataTableModel.isEmpty ? Center(child: CircularProgressIndicator()) : Column(
              children: [
                DataTable(
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

                  rows: data.dataTableModel.map((e){
                    return DataRow(cells: [
                      DataCell(SizedBox(
                          width: 50,
                          child: Text(e.name))),
                      DataCell(SizedBox(
                          width: 50,
                          child: Text(e.uid.toString()))),
                      DataCell(SizedBox(
                          width: 50,child: Text(data.docType(e.docType)))),
                      DataCell(SizedBox(
                          width: 50,child: Image.network(e.url)))
                    ]);
                  }).toList()
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Data_table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data table"),
      ),
       body: SingleChildScrollView(
          scrollDirection:Axis.horizontal ,
          child: DataTable(
            decoration: BoxDecoration(border: Border.all(width:5)),
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Name',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Age',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Role',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                  label: Text(
                    "salary",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )),
              DataColumn(
                  label: Text(
                    "salary",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )),

            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Taylor')),
                  DataCell(Text('19')),
                  DataCell(Text('student')),
                  DataCell(Text('')),
                  DataCell(Text('50000')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Lorence')),
                  DataCell(Text('43')),
                  DataCell(Text('Professor')),
                  DataCell(Text('50000')),
                  DataCell(Text('50000')),

                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('James')),
                  DataCell(Text('27')),
                  DataCell(Text('Associate Professor')),
                  DataCell(Text('30000')),
                  DataCell(Text('50000')),

                ],
              ),
            ],
          ),
        )
    );
  }
}

void main(){
  runApp(MaterialApp(home: Data_table(),));
}

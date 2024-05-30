import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Datatableeg() ,));
}
class Datatableeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: DataTable(border: TableBorder.all(width: 2),
           columns: [
           DataColumn(label: Text("Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)),
           DataColumn(label: Text("Age",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)),
           DataColumn(label: Text("Job",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)),
           DataColumn(label: Text("Salary",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)),

         ],

           rows: [
             DataRow(cells: [
               DataCell(Text("Anu")),
               DataCell(Text("25")),
               DataCell(Text("Doctor"),),
               DataCell(Text("30000"))
             ]),
             DataRow(cells: [
               DataCell(Text("Ram")),
               DataCell(Text("28")),
               DataCell(Text("Teacher"),),
               DataCell(Text("25000")),

             ]),
             DataRow(cells: [
               DataCell(Text("kiran")),
               DataCell(Text("26")),
               DataCell(Text("IT"),),
               DataCell(Text("35000")),

             ]),
             DataRow(cells: [
               DataCell(Text("Arun")),
               DataCell(Text("25")),
               DataCell(Text("Doctor"),),
               DataCell(Text("30000")),

             ]),
           ],),
       ),
     );
  }
}
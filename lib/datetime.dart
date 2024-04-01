


























// import 'dart:js';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: Dateslection(),));
// }
// class Dateslection extends StatefulWidget{
//   @override
//   State<Dateslection> createState() => _DateslectionState();
// }
//
// class _DateslectionState extends State<Dateslection> {
//   DateTime selecteddate =DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//  return Scaffold(
//    body: Center(
//      child: TextField(
//        controller: TextEditingController(text:"${selecteddate.toLocal()}".split(" ")[0]),
//        readOnly: true,
//        onTap: ()=>selectedate(context),
//        decoration: InputDecoration(labelText: "select date",
//        suffixIcon: Icon(Icons.calendar_month)),
//      ),
//    ),
//  );
//   }
//   Future<void>selectedate(BuildContext context)async{
//     final DateTime ? pickdate=await
//     showDatePicker(context: context,
//         firstDate: DateTime(2022), lastDate: DateTime(2025));
//     if(pickdate!=null && pickdate !=selecteddate) {
//       setState(() {
//         selecteddate = pickdate;
//       });
//     }
//   }
// }
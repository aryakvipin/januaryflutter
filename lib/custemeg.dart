
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cutmwidget extends StatelessWidget{
  final Text  text;
  final Text ? descp;

  final Image? img;
  final Color? colr;
  VoidCallback onperss;
  cutmwidget({this.img,required this.text,required this.onperss,this.colr,this.descp});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Card(color: colr,
       child: ListTile(
         leading:img ,
         title:text ,
         subtitle:descp ,
         onTap:onperss ,

       ),
     ),
   );
  }
}
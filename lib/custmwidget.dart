import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custemeg.dart';
import 'loginpage.dart';
void main(){
  runApp(MaterialApp(home: custmeg(),));
}


class custmeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         child: cutmwidget(text: Text("welcome"),
           colr: Colors.red,
           img: Image.asset("assets/images/tree.png"),
           onperss: () { 
           Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
           },),
       ),
     );
  }
  
}
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'girdvieweg.dart';
import 'listbulder.dart';
void main(){
  runApp(MaterialApp(home: Namedrouts(),
    routes: {
    'grid':(context)=>Gridvieweg(),
      'list':(context)=>Listbuilder(),


    },
  ));
}
class Namedrouts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body:  Container(
         child: Center(
           child: Wrap(
             children: [
               ElevatedButton(onPressed: (){
                 Navigator.pushNamed(context, 'grid',);
               }, child: Text("grid")),

               SizedBox(width: 20,),

               ElevatedButton(onPressed: (){
                 Navigator.pushNamed(context, 'list');

               }, child: Text("list")),

             ],
           ),
         ),
       ),
     );
  }

}
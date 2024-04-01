import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(home:Clipereg() ,));}
class Clipereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(children: [

       Container(
         child: ClipRect(

           child: Container(
               child: Image(image: NetworkImage("https://www.shutterstock.com/shutterstock/photos/226746934/display_1500/stock-photo-glitter-vintage-lights-background-gold-silver-blue-and-black-de-focused-226746934.jpg"),)),
         ),
       ),
       Container(
         child: ClipRRect(
           borderRadius: BorderRadius.circular(100),

           child: Image(image: NetworkImage("https://www.shutterstock.com/shutterstock/photos/226746934/display_1500/stock-photo-glitter-vintage-lights-background-gold-silver-blue-and-black-de-focused-226746934.jpg"),),
         ),
       ),
       Container(
         child: ClipOval(


           child: Image(image: NetworkImage("https://www.shutterstock.com/shutterstock/photos/226746934/display_1500/stock-photo-glitter-vintage-lights-background-gold-silver-blue-and-black-de-focused-226746934.jpg"),),
         ),
       )
     ],),
   );
  }

}
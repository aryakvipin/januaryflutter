import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main()
{
  runApp(MaterialApp(home:Gridviewcount() ,));
}
class Gridviewcount extends StatelessWidget{
  List<IconData> icons = [
    FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.facebook, CupertinoIcons.settings_solid, FontAwesomeIcons.youtube,
    FontAwesomeIcons.bicycle
  ];



  var name=["home","facebook","whatsapp","settings","home","facebook"];

  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: GridView.count(crossAxisCount: 3,
   children: List.generate(6, (index) {
     return
         Card(color: Colors.red,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(icons[index]),
             Text (name[index]),
           ],
         ),);
   }),)
   ,
 );
  }

}
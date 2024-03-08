import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Gridviewbuilder(),));
}
class Gridviewbuilder extends StatelessWidget{
  List<IconData> icons = [
    FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.facebook, CupertinoIcons.settings_solid, FontAwesomeIcons.youtube,
    FontAwesomeIcons.bicycle
  ];



    var name=["home","facebook","whatsapp","settings","home","facebook"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10), itemBuilder: (context,index){
        return Card(
          child: Column(
            children: [
            Icon(icons[index]),
              Text(name[index])
            ],
          )
        );
      },itemCount: name.length,
      ),
    );
  }

}
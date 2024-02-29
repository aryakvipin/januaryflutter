import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main()
{
  runApp(MaterialApp(home:Gridviewextend() ,));
}
class Gridviewextend extends StatelessWidget{
  List<IconData> icons = [
    FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.facebook, CupertinoIcons.settings_solid, FontAwesomeIcons.youtube,
    FontAwesomeIcons.bicycle,
    FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.facebook, CupertinoIcons.settings_solid, FontAwesomeIcons.youtube,
    FontAwesomeIcons.bicycle,
    FontAwesomeIcons.facebook,FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.facebook, CupertinoIcons.settings_solid, FontAwesomeIcons.youtube,
    FontAwesomeIcons.bicycle
  ];



  var name=["home","facebook","whatsapp","settings","home","facebook"
      "home","facebook","whatsapp","settings","home","facebook"
      "home","facebook","whatsapp","settings","home","facebook"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 250,
        children: List.generate(16, (index) {
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home:Bottamsheet() ,));
}
class Bottamsheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottamsheet"),),
      body: Center(child: GestureDetector(
        // use can use InkWell also for performing events
        onTap: () => show(context),
    child: Text("showpass")),

      ));
  }

  void show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
       return Container(
         child: Column(
           mainAxisSize:MainAxisSize.min,
           children: [
           ListTile(
             title: Text("whatsapp"),
             leading: FaIcon(FontAwesomeIcons.whatsapp),
           ),
           ListTile(
             title: Text("facebook"),
             leading: FaIcon(FontAwesomeIcons.facebook),
           ),
           ListTile(
             title: Text("instgram"),
             leading: FaIcon(FontAwesomeIcons.instagram),
           )
         ],),
       );
    });
  }

}
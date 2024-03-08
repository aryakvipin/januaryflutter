import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:appbareg() ,
  debugShowCheckedModeBanner: false,));
}
class appbareg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.yellow,
      title: Text("welcome"),
      leading: Icon(Icons.menu),
      actions: [
        Icon(Icons.camera_alt),
        Icon(Icons.search),
        PopupMenuButton(itemBuilder: (context){
          return[
            const PopupMenuItem(child: Text("Settings")),
            const PopupMenuItem(child: Text("New Group")),
            const PopupMenuItem(child: Text("New BroadCast")),
            const PopupMenuItem(child: Text("Linked Device")),



          ];
        }
        )
      ],
    ),
    body: Center(child: Text("flutter"),),);
  }

}
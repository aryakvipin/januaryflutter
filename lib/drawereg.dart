import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Drawereg(),));
}
class Drawereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(title: Text("drawereg"),),
   drawer: Drawer(backgroundColor: Colors.yellow,
     child: ListView(
       children: [
         UserAccountsDrawerHeader(
             accountName: Text("Name")
             , accountEmail: Text("arya@gmail.com"),
           currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/fb.png"),),
           otherAccountsPictures: [
             CircleAvatar(backgroundImage: AssetImage("assets/images/person.jpg"),)  ,
             CircleAvatar(backgroundImage: AssetImage("assets/images/person.jpg"),)


           ],
           decoration: BoxDecoration(
             image:DecorationImage(image: AssetImage("assets/images/glitter.jpeg"),fit: BoxFit.fill),

         ),

         ),
         ListTile(
           leading: Icon(Icons.email),
           title: Text("All mail"),
         ),
         ListTile(
           leading: Icon(Icons.drafts),
           title: Text("Darft"),
         ),
         ListTile(
           leading: Icon(Icons.send),
           title: Text("sent"),
         ),
         ListTile(
           leading: Icon(Icons.outbox),
           title: Text("outbox"),
         ),
         ListTile(
           leading: Icon(Icons.delete),
           title: Text("Trash"),
         )



       ],
     ),
   ),
   body: Center(child: Text("welcome"),),
 );

  }

}
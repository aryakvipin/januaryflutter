import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: bottamnav(),));
}
class bottamnav extends StatefulWidget{
  @override
  State<bottamnav> createState() => _bottamnavState();
}

class _bottamnavState extends State<bottamnav> {
  var screen=[
    Text("Home"),
    Text("Favorite"),
    Text("Account"),
    Text("Notification"),

  ];
  int index=1;
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    appBar: AppBar(title: Text("bottam navigation"),),

    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.green,
      unselectedItemColor: Colors.orange,
      selectedItemColor: Colors.blue,
      currentIndex: index,
      onTap: (tabindex){
      setState(() {
        index=tabindex;
      });
    },
      type: BottomNavigationBarType.fixed,
      items: [
      BottomNavigationBarItem(backgroundColor: Colors.green,
          icon: Icon(Icons.home,),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: "Favorite"),
      BottomNavigationBarItem(icon: Icon(Icons.account_box,),label: "Account"),
      BottomNavigationBarItem(icon: Icon(Icons.notifications,),label: "Notification"),

    ],),
    body: Center(child: screen[index]),
  );
  }
}
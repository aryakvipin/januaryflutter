import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp( home:Homepage() ,));
}
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(color:Colors.red,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/fb.png"),),
              title: Text("arun"),
              subtitle: Text("789535356"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.yellow,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/tree.png"),),
              title: Text("manu"),
              subtitle: Text("789535356"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.blue,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/fb.png"),),
              title: Text("anju"),
              subtitle: Text("789535356"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.green,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/tree.png"),),
              title: Text("ram"),
              subtitle: Text("789535356"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color:Colors.red,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/fb.png"),),
              title: Text("arun"),
              subtitle: Text("789535356"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.yellow,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/tree.png"),),
              title: Text("manu"),
              subtitle: Text("789535356"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.blue,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/fb.png"),),
              title: Text("anju"),
              subtitle: Text("789535356"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.green,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/tree.png"),),
              title: Text("ram"),
              subtitle: Text("789535356"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color:Colors.red,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/fb.png"),),
              title: Text("arun"),
              subtitle: Text("789535356"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.yellow,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/tree.png"),),
              title: Text("manu"),
              subtitle: Text("789535356"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.blue,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/fb.png"),),
              title: Text("anju"),
              subtitle: Text("789535356"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.green,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/tree.png"),),
              title: Text("ram"),
              subtitle: Text("789535356"),
              trailing: Icon(Icons.call),
            ),
          )

        ],
      ),
    );
  }
}

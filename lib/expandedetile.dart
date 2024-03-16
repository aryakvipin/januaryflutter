import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: expandedtileeg(),
  ));
}

class expandedtileeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(
            title: Text("Colors"),
            subtitle: Text("type of colors"),
            children: [
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  title: Text("Red"),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                ),
                title: Text("yellow"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text("green"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Text("blue"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                ),
                title: Text("deepPurpleAccent"),
              )
            ],
          ),
          ExpansionTile(
            title: Text("Colors"),
            subtitle: Text("type of colors"),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                title: Text("Red"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                ),
                title: Text("yellow"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text("green"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Text("blue"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                ),
                title: Text("deepPurpleAccent"),
              )
            ],
          ),
          ExpansionTile(
            title: Text("Colors"),
            subtitle: Text("type of colors"),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                title: Text("Red"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                ),
                title: Text("yellow"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text("green"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Text("blue"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                ),
                title: Text("deepPurpleAccent"),
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridvieweg(),
  ));
}

class Gridvieweg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,),
        children: [
          Card(
            child: Column(
              children: [
                Text("Home"),
                Icon(Icons.home),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Home"),
                Icon(Icons.home),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Home"),
                Icon(Icons.home),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Home"),
                Icon(Icons.home),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Home"),
                Icon(Icons.home),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text("Home"),
                Icon(Icons.home),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

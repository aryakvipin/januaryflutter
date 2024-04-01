import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: dismisseble(),
  ));
}

class dismisseble extends StatelessWidget {
  var data = ["Data1", "Data2", "Data3", "Data4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Dismissible(
              background: Container(
                color: Colors.red,
              ),
              secondaryBackground: Container(
                color: Colors.green,
              ),
              key: ValueKey(data),
              child: ListTile(
                title:  Center(child: Text(data[index])),

              ));
        },
        itemCount: data.length,
      ),
    );
  }
}

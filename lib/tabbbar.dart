import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listseperted.dart';

void main() {
  runApp(MaterialApp(
    home: TAbbar(),
  ));
}

class TAbbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Tabbar Example"),
          actions: const [
            Icon(Icons.add),
          ],
          bottom: const TabBar(
              dividerColor: Colors.blue,
              indicatorColor: Colors.red,
              unselectedLabelColor: Colors.red,
              labelColor: Colors.yellow,
              tabs: [
                Tab(child: Icon(Icons.camera_alt,size: 30,)),
                Tab(
                  child: Text(
                    "Chat",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text("contact",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Tab(
                  child: Text("status",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                )
              ]),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("camera")),
            Listseperted(),
            Center(child: Text("contact")),
            Center(child: Text("status"))
          ],

        ),
        floatingActionButton: FloatingActionButton(onPressed: () {  },
          backgroundColor: Colors.green,
        child: Icon(Icons.add),),

      ),
    );
  }
}

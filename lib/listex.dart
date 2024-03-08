import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListEg(),
  debugShowCheckedModeBanner: false,));
}
class ListEg extends StatefulWidget{
  @override
  State<ListEg> createState() => _ListbuilderState();
}

class _ListbuilderState extends State<ListEg> {

  var images=["assets/images/glitter.jpeg","assets/images/glitter.jpeg","assets/images/glitter.jpeg",
    "assets/images/glitter.jpeg","assets/images/glitter.jpeg","assets/images/glitter.jpeg",];
  var color=[Colors.green,Colors.red,Colors.yellow,Colors.blue,Colors.greenAccent,Colors.deepPurpleAccent,Colors.pink];
  var clr=[800,700,600,500,400,300];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("cities around the world"),
      backgroundColor: Colors.red[500],),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          shadowColor: Colors.green,
          surfaceTintColor: Colors.red,

          color: Colors.yellow[800],
          child: Row(
            children: [
              Container(height: 100,width: 200,
                child: Image(image:AssetImage(images[index]) ,),

              ),
              Container(height: 100,width: 200,
                child:ListTile(
                  title: Text("Delhi",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: ListView(
                    children: const [
                      Text("india"),
                      Text("Population:8mill")
                    ],
                  ),

                ),

              )
            ],
          ),
        );

      },itemCount:images.length ,),
    );
  }
}
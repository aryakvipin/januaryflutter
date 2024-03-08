import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listviewcustm(),));
}
class listviewcustm extends StatelessWidget{
  var name=["anu", "anju","vinu","ram","kiran","maya"];
  var phone=["978564123","9788564123","976564123","946564123","978564123","9788564123"];
  var images=["assets/images/fb.png","assets/images/tree.png","assets/images/fb.png",
    "assets/images/tree.png","assets/images/fb.png","assets/images/tree.png",];
  var color=[Colors.green,Colors.red,Colors.yellow,Colors.blue,Colors.greenAccent,Colors.deepPurpleAccent,Colors.pink];
  var clr=[800,700,600,500,400,300];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return Card(color: color[index],
          child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
          title: Text("${name[index]}"),
          subtitle: Text("${phone[index]}"),
          trailing: SizedBox(
            child: Wrap(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete))

              ],
            ),
          ),

        ),
        );

      },childCount: images.length),)
      // // [
      // //
      // //   Card(
      // //     child: Text("hallo",)
      // //     ,color: Colors.red,
      // //   ),  Card(
      // //     child: Text("hallo",)
      // //     ,color: Colors.red,
      // //   ),
      // //   Card(
      // //     child: Text("hallo",)
      // //     ,color: Colors.red,
      // //   ),  Card(
      // //     child: Text("hallo",)
      // //     ,color: Colors.red,
      // //   )
      // // ],
      // //   List.generate(10, (index) => Card(child: Text("hallo"),))
      // )
   //   ),
    );
  }

}
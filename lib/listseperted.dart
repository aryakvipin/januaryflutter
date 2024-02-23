import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Listseperted() ,));
}
class Listseperted extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
          child: Text("flutter"),
        );
      },


          separatorBuilder: (context,index){

        if(index %3==0){
          return Card(
            child: Text(""),
          );
        }
        else{
          return SizedBox();
        }
          }, itemCount: 10),
    );

  }

}
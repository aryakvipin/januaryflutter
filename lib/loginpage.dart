import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:loginpage() ,));
}
class loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:  Container(color: Colors.cyan,
       child: Column(
         children: [

            const Padding(
              padding: EdgeInsets.only(top: 100,),
              child: Image(image: AssetImage("assets/images/fb.png"),height: 100,width: 100,),
            ),
            Padding(
             padding: EdgeInsets.only(top: 20,left: 70,right: 70),
             child: TextField(
               decoration: InputDecoration(
                 labelText: "UserName",
                 hintText: "username",
                 prefixIcon: Icon(Icons.person),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(50)
                 )
               ),
             ),
           ),
            Padding(
             padding: EdgeInsets.only(top: 20,left: 70,right: 70,bottom: 50),
             child: TextField(
               decoration: InputDecoration(
                 labelText: "Password",
                 hintText: "password",
                 prefixIcon: Icon(Icons.password),
                 suffixIcon: Icon(Icons.visibility_off),
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
               ),
             ),
           ),
           ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor:
                  Colors.green,textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)) ,onPressed: (){

           }, child: Text("Login")),

         TextButton(onPressed: (){

         }, child: Text("Not a user, create new Account"))



         ],
       ),
     ),
   );
  }

}
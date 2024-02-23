import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: Registerpage(),
  ));
}

class Registerpage extends StatefulWidget {
  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  GlobalKey<FormState> formkey=GlobalKey();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(
                  top: 100,
                ),
                child: Text(
                  "Register Page",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                )),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 70, right: 70),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "UserName",
                    hintText: "username",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 70, right: 70),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 70, right: 70),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon:IconButton(onPressed: () {
                    setState(() {
                      if(showpass==true){
                        showpass=false;
                      }
                      else{
                        showpass=true;
                      }
                    });
                  }, icon: Icon(showpass==true? Icons.visibility_off:Icons.visibility),),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 70, right: 70, bottom: 50),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Confirm password",
                  hintText: "Cm password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginpage()));
                },
                child: Text("Register")),
          ],
        ),
      ),
    );
  }
} /**/

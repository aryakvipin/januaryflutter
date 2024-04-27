import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:januaryflutter/loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: Spalshscreen(),
  ));
}

class Spalshscreen extends StatefulWidget {
  @override
  State<Spalshscreen> createState() => _SpalshscreenState();
}

class _SpalshscreenState extends State<Spalshscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginpage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/glitter.jpeg"),
                fit: BoxFit.fill)),
        child: Center(
          child: Image(
            image: AssetImage("assets/images/fb.png"),
            height: 150,
            width: 150,
          ),
        ),
      ),
    );
  }
}

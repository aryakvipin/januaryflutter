import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dummyprodect.dart';



class productdetils extends StatefulWidget{
  @override
  State<productdetils> createState() => _MainscreenState();
}

class _MainscreenState extends State<productdetils> {
  @override
  Widget build(BuildContext context) {
    final id =ModalRoute.of(context)?.settings.arguments;
    final product=dummyProducts.firstWhere((prodct) => prodct["id"]==id);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 100,
              width: 100,
            child: Image(image: AssetImage(product["image"]),),
          ),
          Text(product["name"]),
          Text(product["description"]),
        ],

      ));
  }

}
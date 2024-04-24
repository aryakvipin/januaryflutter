import 'package:flutter/material.dart';
import 'package:januaryflutter/egsqlfilte/dummyprodect.dart';

class Home extends StatelessWidget {
  final data;
  const Home({Key? key,required this.data}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    var name  = data[0]['name'];
    var email  = data[0]['email'];
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
      ),
      body: ListView(
        children: dummyProducts.map((product)=>GestureDetector(
          child: Center(
            child: Container(color: Colors.green[450],
              height: 150,width: 250,
              child: Card(
                child: Column(
                  children: [

                    Text("${product["name"]}"),
                    Image(image: AssetImage("${product["image"]}"),height: 80,width: 80,),
                  ],
                ),
              ),
            ),
          ),
          onTap:()=>getnote(context,product["id"]),
        )).toList(),
      ),
    );
  }

  getnote(BuildContext context, product) {
    Navigator.of(context).pushNamed('secondpage', arguments:product );
  }
}
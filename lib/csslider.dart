import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: csslider(),));
}
class csslider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
        CarouselSlider(

          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ), items: [
             Image(image: AssetImage("assets/images/glitter.jpeg")) ,
          Image(image: AssetImage("assets/images/glitter.jpeg")),
          Image(image: AssetImage("assets/images/glitter.jpeg")),

          Image(image: AssetImage("assets/images/glitter.jpeg"))





        ],
        ),
      ),
    );
  }

}
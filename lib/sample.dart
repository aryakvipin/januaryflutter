
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(
  DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context) =>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,

    home:Sample() ,
  ),
  )
  );
  }



class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/glitter.jpeg"),
                fit: BoxFit.fill)),
        width: double.infinity,
        height: double.infinity,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/fb.png"),
              height: 150,
              width: 150,
            ),
            Text(
              "flutter",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

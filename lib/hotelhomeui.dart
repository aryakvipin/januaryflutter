import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Kindacode.com',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue[200],
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: 150,
            flexibleSpace: const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 5),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Type   Your Location',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: false,
            leading: Icon(Icons.menu),
            actions: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.heart),
                onPressed: () {},

              ) ,
            ],
            bottom: AppBar(
              backgroundColor: Colors.blue[200],
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                height: 40,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search for something',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt)),
                  ),
                ),
              ),
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                width: 500,
                height: 200,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    Positioned(
                      right: 40,
                      top: 40,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.orange,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.local_cafe), // icon
                            Text("Cafe"), // text
                          ],
                        ),
                      ),
                    ), //Container
                    Positioned(
                      left: 210,
                      top: 40,
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.restaurant), // icon
                            Text("Resturent"), // text
                          ],
                        ),
                      ),
                    ), //Container
                    Positioned(
                      left: 50,
                      top: 40,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.redAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.hotel), // icon
                            Text("Hotel"), // text
                          ],
                        ),
                      ),
                    ), //Container

                    //Container
                  ], //<Widget>[]
                ),
              ),
              // Container(
              //   height: 1000,
              //   color: Colors.pink,
              // ),
            ]),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                alignment: Alignment.topCenter,
                height: 250,
                width: 100,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: [
                          Container(
                            child: Image(
                              image: AssetImage('assets/images/hotelbed.jpg',),
                              height: 130,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),

                          ),
                          Positioned(child: Container(child: Center(child: Text("\$40")),color: Colors.white,height: 30,width: 50,
                          ),right: 20,
                            bottom: 20,)
                        ],
                      ),
                      // icon
                      Padding(
                        padding: const EdgeInsets.only(top: 15,right: 250),
                        child: Text(
                          "Awesome Room near Boddha",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Boddha, kathaamndu",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star_half,color: Colors.green,),
                          Text(
                            "(220 reviews)",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ) // text
                    ],
                  ),
                ),
              );
            }),
            // Container(
            //   height: 1000,
            //   color: Colors.pink,
            // ),
          ),

        ],
      ),
    );
  }
}

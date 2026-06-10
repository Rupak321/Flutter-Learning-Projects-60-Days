import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buisness Card")),
      body: Builder(
        builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text("Buisness card"),
                  Container(
     
      width: 370,
      height: 290,
      decoration: BoxDecoration(
        boxShadow: [
      BoxShadow(
        color: Colors.black26, // color
        blurRadius: 10,        // softness
        spreadRadius: 2,       // size
        offset: Offset(0, 5),  // position (x, y)
      ),
    ],
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
      top: 10,
      left: 10,
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage("assets/images/img.jpg"),
      ),
    ),

      Text("Rupak Pandey"),
    



        ]
      ),
    ),

              ],
            ),
          );
        },
      ),
    );
  }
}
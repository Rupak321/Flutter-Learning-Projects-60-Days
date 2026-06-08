import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => second();
}

class second extends State<MyApp> {
  int _count= 0; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Counter Application")),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  

                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _count++;
                      });
                    },
                    child: const Text("Click"),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if(_count>0){
                          _count--;}
                          
                        });

                      },
                      child: Text("Decrease"),
                  ),
                  

                Text('$_count'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
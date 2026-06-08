import 'package:flutter/material.dart';
import 'nextpage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
              body: Builder(
                
          builder: (context){
            return Center(
          child: Column(
            children: [
              Text("Welcome To Our Page"),
              Text("Hello World"),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.brown,
                    backgroundColor: Colors.cyan,
                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  onPressed: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Nextpage())
                        );
                  },
                  child: const Text("PLxz click me")


                )



            ],




            ),
            );
          },
        ),
       ),
    );
  }
}
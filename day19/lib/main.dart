import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Recipe List
  final List<Map<String, String>> recipes = [
    {
      'title': 'Pizza',
      'description': 'Cheesy and delicious pizza.',
      'image':
          'https://images.unsplash.com/photo-1513104890138-7c749659a591'
    },
    {
      'title': 'Burger',
      'description': 'Juicy burger with fries.',
      'image':
          'https://images.unsplash.com/photo-1568901346375-23c9450c58cd'
    },
    {
      'title': 'Pasta',
      'description': 'Creamy white sauce pasta.',
      'image':
          'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9'
    },
    {
      'title': 'Momo',
      'description': 'Famous Nepali dumplings.',
      'image':
          'https://images.unsplash.com/photo-1625944230945-1b7dd3b949ab'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Recipe List'),
        ),
        body: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Image.network(
                  recipes[index]['image']!,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                  loadingBuilder:
                      (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return CircularProgressIndicator();
                  },
                ),
                title: Text(recipes[index]['title']!),
                subtitle:
                    Text(recipes[index]['description']!),
                onTap: () {
                  print(recipes[index]['title']);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
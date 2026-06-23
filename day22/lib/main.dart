import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductListScreen(),
    );
  }
}

class Product {
  final String name;

  const Product(this.name);
}

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  final List<Product> products = const [
    Product("Laptop"),
    Product("Phone"),
    Product("Headphones"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return ListTile(
            title: Text(product.name),
            onTap: () async {
              final bool? addedToCart =
                  await Navigator.push<bool>(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      DetailScreen(product: product),
                ),
              );

              if (!context.mounted) return;

              if (addedToCart == true) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "${product.name} added to cart",
                    ),
                  ),                     
                );
              }
            },
          );
        },
      ),  
    );   
  }
}

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          child: const Text("Add to Cart"),
        ),     
      ),      
    );       
  }
}

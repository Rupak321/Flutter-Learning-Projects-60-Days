import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [

            Row(
              children: const [
                Expanded(
                  child: StatCard(title: "Users", value: "1200"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: StatCard(title: "Sales", value: "Rs 15K"),
                ),
              ],
            ),

            SizedBox(height: 10),

            Row(
              children: const [
                Expanded(
                  child: StatCard(title: "Orders", value: "320"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: StatCard(title: "Profit", value: "Rs 8K"),
                ),
              ],
            ),
          ],
        ),
      ),
    ); 
  }
}                      

class StatCard extends StatelessWidget {
  final String title;
  final String value;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
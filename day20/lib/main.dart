import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Root widget with theme toggle
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // 🌞 Light Theme
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontFamily: 'MyFont', fontSize: 16),
        ),
      ),

      // 🌙 Dark Theme
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontFamily: 'MyFont', fontSize: 16),
        ),
      ),

      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,

      home: HomePage(
        isDark: isDark,
        onToggle: () {
          setState(() {
            isDark = !isDark;
          });
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final bool isDark;
  final VoidCallback onToggle;

  const HomePage({
    super.key,
    required this.isDark,
    required this.onToggle,
  });

  // Sample quotes
  final List<String> quotes = const [
    "NO onw is perfect so pencil have eraser",
    "Code is like humor. When you have to explain it, its byad.",
    "Dream big and dare to fail.",
    "Push yourself, till you meet your limitation",
  ];

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes App"),

        actions: [
          Switch(
            value: isDark,
            onChanged: (value) => onToggle(),
          ),
        ],
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: quotes.length,

        itemBuilder: (context, index) {
          return Card(
            color: colors.primaryContainer,
            margin: const EdgeInsets.symmetric(vertical: 8),

            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                quotes[index],
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: colors.onPrimaryContainer),
              ),
            ),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:day21/widgets/_about.dart';
import 'package:day21/widgets/_header.dart';
import 'package:day21/widgets/_projects.dart';
import 'package:day21/widgets/_skills.dart';

class PortfolioScreen extends StatelessWidget {
  PortfolioScreen({super.key});

  final List<String> skills = [
    "Flutter",
    "Java",
    "Python",
    "MySQL",
    "UI/UX"
  ];

  final List<Map<String, String>> projects = [
    {
      "title": "Laundry Management System",
      "desc": "A full-stack Java project for managing laundry services."
    },
    {
      "title": "JARVIS AI Assistant",
      "desc": "AI assistant with voice commands and smart interactions."
    },
    {
      "title": "Astro Nepal",
      "desc": "Astrology app with Rashifal, Calendar and News."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Portfolio"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            HeaderSection(),
            SizedBox(height: 20),
            AboutSection(),
            SizedBox(height: 20),
            SkillsSection(skills: skills),
            SizedBox(height: 20),
            ProjectsSection(projects: projects),
          ],
        ),
      ),
    );
  }
}

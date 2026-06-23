import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  final List<Map<String, String>> projects;

  const ProjectsSection({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Projects",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        ...projects.map((project) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.work, color: Colors.blue),
              title: Text(project['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(project['desc']!),
            ),
          );
        }).toList(),
      ],
    );
  }
}

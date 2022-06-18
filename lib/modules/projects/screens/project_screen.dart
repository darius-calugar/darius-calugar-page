import 'package:darius_calugar/modules/projects/projects.dart';
import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  final Project project;

  const ProjectScreen({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Toolbar(),
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Text(project.name),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

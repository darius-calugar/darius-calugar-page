import 'package:darius_calugar/modules/projects/projects.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeProjectsSection extends StatelessWidget {
  const HomeProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final projectsProvider = Provider.of<ProjectsProvider>(context);

    final theme = Theme.of(context);

    return Column(
      children: [
        const SizedBox(height: 64),
        Text(
          'Personal Projects',
          style: theme.textTheme.displaySmall,
        ),
        const SizedBox(height: 86),
        for (final project in projectsProvider.projects) ...[
          if (projectsProvider.projects.first != project) const SizedBox(height: 128),
          SizedBox(
            width: 600,
            child: ProjectCard(
              project: project,
            ),
          ),
        ],
        const SizedBox(height: 64),
      ],
    );
  }
}

import 'package:darius_calugar/modules/projects/projects.dart';
import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeProjectsSection extends StatelessWidget {
  const HomeProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final projectsProvider = Provider.of<ProjectsProvider>(context);

    final theme = Theme.of(context);
    final layout = Layout.of(context);

    return Column(
      children: [
        const SizedBox(height: 64),
        Text(
          'Personal Projects',
          textAlign: TextAlign.center,
          style: theme.textTheme.displaySmall,
        ),
        const SizedBox(height: 86),
        for (final project in projectsProvider.projects) ...[
          if (projectsProvider.projects.first != project) const SizedBox(height: 128),
          Container(
            margin: !layout.isPortrait ? const EdgeInsets.symmetric(horizontal: 32) : EdgeInsets.zero,
            width: !layout.isPortrait ? 800 : null,
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

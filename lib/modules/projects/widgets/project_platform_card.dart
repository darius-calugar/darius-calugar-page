import 'package:darius_calugar/modules/projects/projects.dart';
import 'package:flutter/material.dart';

class ProjectPlatformCard extends StatelessWidget {
  final ProjectPlatform platform;
  final List<Widget> children;

  const ProjectPlatformCard({
    super.key,
    required this.platform,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary.withOpacity(.25),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  platform.icon,
                  color: theme.colorScheme.secondary,
                ),
                const SizedBox(width: 16),
                Text(
                  platform.name,
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: theme.colorScheme.onSecondary,
            thickness: 2,
            height: 2,
          ),
          ElevatedButtonTheme(
            data: ElevatedButtonThemeData(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.disabled)) {
                    return theme.colorScheme.secondary.withOpacity(.25);
                  } else {
                    return theme.colorScheme.secondary;
                  }
                }),
                foregroundColor: MaterialStateProperty.all(theme.colorScheme.onSecondary),
                textStyle: MaterialStateProperty.all(theme.textTheme.titleMedium),
                minimumSize: MaterialStateProperty.all(const Size.fromRadius(24)),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (final child in children) ...[
                    if (child != children.first) const SizedBox(height: 16),
                    child,
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

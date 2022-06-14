part of projects;

class ProjectsProvider extends ChangeNotifier {
  final projects = const [
    Project(
      id: 0,
      name: 'Chess: Auto-Chess',
      description: 'A chess game that automatically plays itself against a computer.',
      version: 'v0.1 Alpha',
      platforms: [
        ProjectPlatform.windows,
        ProjectPlatform.linux,
        ProjectPlatform.macos,
        ProjectPlatform.android,
        ProjectPlatform.ios,
        ProjectPlatform.web,
      ],
    ),
    Project(
      id: 0,
      name: 'Super-Pong',
      description: 'A Pong game that is super-powered.',
      version: 'v0.6 Demo',
      platforms: [
        ProjectPlatform.windows,
      ],
    ),
  ];
}

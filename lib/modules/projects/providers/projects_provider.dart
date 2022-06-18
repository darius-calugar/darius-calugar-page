import 'package:darius_calugar/modules/projects/projects.dart';
import 'package:flutter/material.dart';

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
      logo: 'assets/images/chess_auto_chess/logo.png',
      thumbnail: 'assets/images/chess_auto_chess/logo.png',
      images: [
        'assets/images/chess_auto_chess/logo.png',
        'assets/images/chess_auto_chess/logo.png',
        'assets/images/chess_auto_chess/logo.png',
        'assets/images/chess_auto_chess/logo.png',
        'assets/images/chess_auto_chess/logo.png',
        'assets/images/chess_auto_chess/logo.png',
        'assets/images/chess_auto_chess/logo.png',
      ],
    ),
  ];
}

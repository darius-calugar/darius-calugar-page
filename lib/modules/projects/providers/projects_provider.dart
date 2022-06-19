import 'package:darius_calugar/modules/projects/models/project_direct_source.dart';
import 'package:darius_calugar/modules/projects/projects.dart';
import 'package:flutter/material.dart';

class ProjectsProvider extends ChangeNotifier {
  final projects = const [
    Project(
      id: 0,
      name: 'Chess: Auto-Chess',
      description:
          'A casual strategy game in which the player must defend the king from increasingly dangerous waves of enemies. '
          'Usual chess rules do not apply, as player pieces cannot move and attack all enemies in range. '
          'Pieces apply exotic effects that can help allies or impair enemies.',
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
      thumbnail: 'assets/images/chess_auto_chess/image_1.png',
      images: [
        'assets/images/chess_auto_chess/image_1.png',
        'assets/images/chess_auto_chess/image_2.png',
      ],
      directSources: [
        ProjectDirectSource(
          platform: ProjectPlatform.windows,
          url: 'https://darius-calugar.github.io/chess-auto-chess/windows/chess_auto_chess_x64.zip',
          label: 'Download x64 (.zip)',
          type: ProjectDirectSourceType.download,
        ),
        ProjectDirectSource(
          platform: ProjectPlatform.linux,
          url: 'https://darius-calugar.github.io/chess-auto-chess/linux/chess_auto_chess_x64.zip',
          label: 'Download x64 (.zip)',
          type: ProjectDirectSourceType.download,
        ),
        ProjectDirectSource(
          platform: ProjectPlatform.macos,
          url: 'https://darius-calugar.github.io/chess-auto-chess/macos/chess_auto_chess.zip',
          label: 'Download (.zip)',
          type: ProjectDirectSourceType.download,
        ),
        ProjectDirectSource(
          platform: ProjectPlatform.android,
          url: 'https://darius-calugar.github.io/chess-auto-chess/android/chess_auto_chess.apk',
          label: 'Download (.apk)',
          type: ProjectDirectSourceType.download,
        ),
        ProjectDirectSource(
          platform: ProjectPlatform.ios,
          url: 'https://darius-calugar.github.io/chess-auto-chess/ios/chess_auto_chess.ipa',
          label: 'Download (.ipa)',
          type: ProjectDirectSourceType.download,
          available: false,
        ),
        ProjectDirectSource(
          platform: ProjectPlatform.web,
          url: 'https://darius-calugar.github.io/chess-auto-chess/web',
          label: 'Go to web app',
          type: ProjectDirectSourceType.navigate,
        ),
      ],
      feedbackUrl:
          'https://docs.google.com/forms/d/e/1FAIpQLScYGW92Ik7JLAENmZuKwFunkgq_fNoc1SZmTkNJDBFHTbDWrQ/viewform?usp=sf_link',
    ),
  ];
}

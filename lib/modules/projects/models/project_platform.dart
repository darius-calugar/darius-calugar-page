import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@immutable
class ProjectPlatform {
  final IconData icon;
  final String name;

  const ProjectPlatform._({
    required this.icon,
    required this.name,
  });

  static const ProjectPlatform windows = ProjectPlatform._(
    icon: FontAwesomeIcons.windows,
    name: 'Windows',
  );

  static const ProjectPlatform linux = ProjectPlatform._(
    icon: FontAwesomeIcons.linux,
    name: 'Linux',
  );

  static const ProjectPlatform macos = ProjectPlatform._(
    icon: FontAwesomeIcons.apple,
    name: 'MacOS',
  );

  static const ProjectPlatform android = ProjectPlatform._(
    icon: FontAwesomeIcons.android,
    name: 'Android',
  );

  static const ProjectPlatform ios = ProjectPlatform._(
    icon: FontAwesomeIcons.mobileScreenButton,
    name: 'iOS',
  );

  static const ProjectPlatform web = ProjectPlatform._(
    icon: FontAwesomeIcons.globe,
    name: 'Web', 
  );

  static const values = [
    windows,
    linux,
    macos,
    android,
    ios,
    web,
  ];
}

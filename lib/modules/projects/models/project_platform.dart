import 'package:flutter/material.dart';

@immutable
class ProjectPlatform {
  // ignore: unused_field
  final String _id;

  const ProjectPlatform._(this._id);

  static const ProjectPlatform windows = ProjectPlatform._('windows');

  static const ProjectPlatform linux = ProjectPlatform._('linux');

  static const ProjectPlatform macos = ProjectPlatform._('macos');

  static const ProjectPlatform android = ProjectPlatform._('android');

  static const ProjectPlatform ios = ProjectPlatform._('ios');

  static const ProjectPlatform web = ProjectPlatform._('web');

  static const values = [
    windows,
    linux,
    macos,
    android,
    ios,
    web,
  ];
}

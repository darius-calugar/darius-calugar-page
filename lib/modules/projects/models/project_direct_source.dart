import 'package:darius_calugar/modules/projects/projects.dart';
import 'package:flutter/cupertino.dart';

@immutable
class ProjectDirectSource {
  final ProjectPlatform platform;
  final String url;
  final String label;
  final ProjectDirectSourceType type;
  final bool available;

  const ProjectDirectSource({
    required this.platform,
    required this.url,
    required this.label,
    required this.type,
    this.available = true,
  });
}

enum ProjectDirectSourceType {
  navigate,
  download,
}

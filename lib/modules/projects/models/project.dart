import 'package:darius_calugar/modules/projects/models/project_direct_source.dart';
import 'package:darius_calugar/modules/projects/projects.dart';
import 'package:flutter/material.dart';

@immutable
class Project {
  final int id;
  final String name;
  final String description;
  final String version;
  final List<ProjectPlatform> platforms;
  final String logo;
  final String thumbnail;
  final List<String> images;
  final List<ProjectDirectSource> directSources;
  final String? feedbackUrl;

  const Project({
    required this.id,
    required this.name,
    required this.description,
    required this.version,
    required this.platforms,
    required this.logo,
    required this.thumbnail,
    required this.images,
    required this.directSources,
    required this.feedbackUrl,
  });
}

part of projects;

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

  const Project({
    required this.id,
    required this.name,
    required this.description,
    required this.version,
    required this.platforms,
    required this.logo,
    required this.thumbnail,
    required this.images,
  });
}

part of projects;

@immutable
class Project {
  final int id;
  final String name;
  final String version;
  final String description;
  final List<ProjectPlatform> platforms;

  const Project({
    required this.id,
    required this.name,
    required this.version,
    required this.description,
    required this.platforms,
  });
}

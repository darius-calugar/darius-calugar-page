part of projects;

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AspectRatio(
          aspectRatio: 4/3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    project.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 4,
                  left: 4,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.touch_app,
                            color: theme.colorScheme.background,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Tap for more',
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: theme.colorScheme.background,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Material(
                    color: AppColors.transparent,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                project.name,
                style: theme.textTheme.headlineLarge,
              ),
              const VerticalDivider(
                width: 32,
              ),
              Text(
                project.version,
                style: theme.textTheme.headlineMedium!.copyWith(
                  color: theme.colorScheme.onBackground.withOpacity(.5),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          child: Text(
            project.description,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleMedium,
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final projectPlatform in project.platforms)
              ProjectPlatformChip(
                projectPlatform: projectPlatform,
              ),
          ],
        ),
      ],
    );
  }
}

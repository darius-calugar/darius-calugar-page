part of projects;

class ProjectPlatformChip extends StatelessWidget {
  final ProjectPlatform projectPlatform;

  const ProjectPlatformChip({
    Key? key,
    required this.projectPlatform,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary.withOpacity(.15),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _buildIcon(),
            color: theme.colorScheme.secondary,
            size: 16,
          ),
          const SizedBox(width: 8),
          Text(
            _buildLabel(),
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }

  IconData _buildIcon() {
    switch (projectPlatform) {
      case ProjectPlatform.windows:
        return FontAwesomeIcons.windows;
      case ProjectPlatform.linux:
        return FontAwesomeIcons.linux;
      case ProjectPlatform.macos:
        return FontAwesomeIcons.apple;
      case ProjectPlatform.android:
        return FontAwesomeIcons.android;
      case ProjectPlatform.ios:
        return FontAwesomeIcons.mobileScreenButton;
      case ProjectPlatform.web:
        return FontAwesomeIcons.globe;
      default:
        return FontAwesomeIcons.question;
    }
  }

  String _buildLabel() {
    switch (projectPlatform) {
      case ProjectPlatform.windows:
        return 'Windows';
      case ProjectPlatform.linux:
        return 'Linux';
      case ProjectPlatform.macos:
        return 'MacOS';
      case ProjectPlatform.android:
        return 'Android';
      case ProjectPlatform.ios:
        return 'iOS';
      case ProjectPlatform.web:
        return 'Web';
      default:
        return 'Unknown';
    }
  }
}

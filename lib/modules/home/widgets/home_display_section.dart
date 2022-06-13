part of home;

class HomeDisplaySection extends StatelessWidget {
  const HomeDisplaySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Expanded(
          child: IntrinsicWidth(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Darius-Daniel Călugăr',
                  style: theme.textTheme.displayMedium,
                ),
                const SizedBox(height: 8),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Frontend Developer',
                          style: theme.textTheme.headlineSmall!.copyWith(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                      const VerticalDivider(
                        width: 32,
                      ),
                      Center(
                        child: Text(
                          'Indie Game Developer',
                          style: theme.textTheme.headlineSmall!.copyWith(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 16,
          runSpacing: 16,
          children: [
            for (final data in <Map<String, dynamic>>[
              {
                'title': 'Github',
                'icon': SimpleIcons.github,
                'color': const Color(0xFF181717),
              },
              {
                'title': 'Itch.io',
                'icon': SimpleIcons.itchdotio,
                'color': const Color(0xFFFA5C5C),
              },
              {
                'title': 'Youtube',
                'icon': SimpleIcons.youtube,
                'color': const Color(0xFFFF0000),
              },
              {
                'title': 'Twitch',
                'icon': SimpleIcons.twitch,
                'color': const Color(0xFF6441A4),
              },
              {
                'title': 'Twitter',
                'icon': SimpleIcons.twitter,
                'color': const Color(0xFF1DA1F2),
              },
              {
                'title': 'Facebook',
                'icon': SimpleIcons.facebook,
                'color': const Color(0xFF1877F2),
              },
              {
                'title': 'Linkedin',
                'icon': SimpleIcons.linkedin,
                'color': const Color(0xFF0A66C2),
              },
            ])
              SizedBox(
                width: 200,
                child: OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(data['color'].withOpacity(.15)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          data['icon'],
                          color: data['color'],
                        ),
                        const SizedBox(width: 8),
                        Text(
                          data['title'],
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

part of home;

class HomeProjectsSection extends StatelessWidget {
  const HomeProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        const SizedBox(height: 64),
        Text(
          'Personal Projects',
          style: theme.textTheme.displaySmall,
        ),
        const SizedBox(height: 64),
        SizedBox(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  'https://picsum.photos/500',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Chess: Auto-Chess',
                      style: theme.textTheme.headlineLarge,
                    ),
                    const VerticalDivider(
                      width: 32,
                    ),
                    Text(
                      'v0.1 alpha',
                      style: theme.textTheme.headlineMedium!.copyWith(
                        color: theme.colorScheme.onBackground.withOpacity(.5),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8,
                runSpacing: 8,
                children: const [
                  Chip(
                    avatar: Icon(
                      FontAwesomeIcons.windows,
                      size: 16,
                    ),
                    label: Text('Windows'),
                  ),
                  Chip(
                    avatar: Icon(
                      FontAwesomeIcons.computer,
                      size: 16,
                    ),
                    label: Text('MacOS'),
                  ),
                  Chip(
                    avatar: Icon(
                      FontAwesomeIcons.linux,
                      size: 16,
                    ),
                    label: Text('Linux'),
                  ),
                  Chip(
                    avatar: Icon(
                      FontAwesomeIcons.android,
                      size: 16,
                    ),
                    label: Text('Android'),
                  ),
                  Chip(
                    avatar: Icon(
                      FontAwesomeIcons.apple,
                      size: 16,
                    ),
                    label: Text('iOS'),
                  ),
                  Chip(
                    avatar: Icon(
                      FontAwesomeIcons.globe,
                      size: 16,
                    ),
                    label: Text('Web'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                child: Text(
                  'Lorem ipsum dolor sit amet. ' * 10,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('See more'),
                      SizedBox(width: 8),
                      Icon(
                        FontAwesomeIcons.arrowRight,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 64),
      ],
    );
  }
}

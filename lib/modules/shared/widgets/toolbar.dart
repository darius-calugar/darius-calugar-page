part of shared;

class Toolbar extends StatelessWidget {
  const Toolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Darius Călugăr',
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Projects'),
                ),
                const VerticalDivider(),
                TextButton(
                  onPressed: () {},
                  child: const Text('About'),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      FontAwesomeIcons.fileArrowDown,
                      size: 16,
                    ),
                    SizedBox(width: 8),
                    Text('Download CV'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

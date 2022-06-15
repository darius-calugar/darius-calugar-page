import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class HomeDisplaySection extends StatelessWidget {
  const HomeDisplaySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final layout = Layout.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: IntrinsicWidth(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Darius Călugăr',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displayMedium!.copyWith(
                    fontSize: theme.textTheme.displayMedium!.fontSize! * (!layout.isPortrait ? 1 : 0.6),
                  ),
                ),
                const SizedBox(height: 8),
                Text.rich(
                  style: theme.textTheme.headlineSmall!.copyWith(
                    color: theme.colorScheme.primary,
                    fontSize: theme.textTheme.headlineSmall!.fontSize! * (!layout.isPortrait ? 1 : 0.6),
                  ),
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Frontend Developer',
                      ),
                      TextSpan(
                        text: ' | ',
                        style: TextStyle(
                          color: theme.dividerColor,
                        ),
                      ),
                      const TextSpan(
                        text: 'Indie Game Dev',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Wrap(
          alignment: layout.isLandscape ? WrapAlignment.center : WrapAlignment.spaceEvenly,
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
              if (layout.isLandscape)
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
                )
              else
                IconButton(
                  onPressed: () {},
                  splashColor: data['color'].withOpacity(.5),
                  iconSize: layout.isPortrait ? 24 : 32,
                  icon: Icon(
                    data['icon'],
                    color: data['color'],
                  ),
                ),
          ],
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

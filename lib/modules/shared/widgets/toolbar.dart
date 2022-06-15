import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final layout = Layout.of(context);

    return Container(
      height: kToolbarHeight,
      padding: EdgeInsets.all(8),
      child: Stack(
        children: [
          Positioned.fill(
            right: null,
            child: GestureDetector(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    !layout.isPortrait ? 'Darius Călugăr' : 'D.C.',
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Projects',
                      style: TextStyle(
                        fontSize: theme.textTheme.titleMedium!.fontSize!,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    indent: 8,
                    endIndent: 8,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontSize: theme.textTheme.titleMedium!.fontSize!,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (!layout.isPortrait)
            Positioned.fill(
              left: null,
              child: OutlinedButton(
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
            ),
        ],
      ),
    );
  }
}

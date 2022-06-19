import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:darius_calugar/modules/shared/utils/http_utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Toolbar extends StatelessWidget {
  final Function()? onDisplayPressed;
  final Function()? onProjectsPressed;
  final Function()? onAboutPressed;

  const Toolbar({
    super.key,
    this.onDisplayPressed,
    this.onProjectsPressed,
    this.onAboutPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final layout = Layout.of(context);

    return Container(
      height: kToolbarHeight,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.dividerColor,
            width: 1,
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            right: null,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  onDisplayPressed?.call();
                  GoRouter.of(context).go('/?section=display');
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: AbsorbPointer(
                      child: Text(
                        !layout.isPortrait ? 'Darius Călugăr' : 'D.C.',
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
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
                    onPressed: () {
                      onProjectsPressed?.call();
                      GoRouter.of(context).go('/?section=projects');
                    },
                    child: AbsorbPointer(
                      child: Text(
                        'Projects',
                        style: TextStyle(
                          fontSize: theme.textTheme.titleMedium!.fontSize!,
                        ),
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    indent: 8,
                    endIndent: 8,
                  ),
                  TextButton(
                    onPressed: () {
                      onAboutPressed?.call();
                      GoRouter.of(context).go('/?section=about');
                    },
                    child: AbsorbPointer(
                      child: Text(
                        'About',
                        style: TextStyle(
                          fontSize: theme.textTheme.titleMedium!.fontSize!,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            left: null,
            child: OutlinedButton(
              onPressed: () {
                downloadFile('https://darius-calugar.github.io/meta/cv.pdf');
              },
              child: Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.fileArrowDown,
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  AbsorbPointer(
                    child: Text(!layout.isPortrait ? 'Download CV' : 'CV'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

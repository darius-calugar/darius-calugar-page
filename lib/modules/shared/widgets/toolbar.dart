import 'package:darius_calugar/modules/home/home.dart';
import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    final route = ModalRoute.of(context);

    return Container(
      height: kToolbarHeight,
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Positioned.fill(
            right: null,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  onDisplayPressed?.call();
                  if (route!.settings.name != HomeRoute.routeName) {
                    _onGoToDisplay(context);
                  }
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
                      if (route!.settings.name != HomeRoute.routeName) {
                        _onGoToProjects(context);
                      }
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
                      if (route!.settings.name != HomeRoute.routeName) {
                        _onGoToAbout(context);
                      }
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
              onPressed: () {},
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

  void _onGoToDisplay(BuildContext context) {
    Navigator.pushReplacementNamed(
      context,
      HomeRoute.routeName,
      arguments: const HomeRouteArguments(
        scrollHash: HomeScrollHash.display,
      ),
    );
  }

  void _onGoToProjects(BuildContext context) {
    Navigator.pushReplacementNamed(
      context,
      HomeRoute.routeName,
      arguments: const HomeRouteArguments(
        scrollHash: HomeScrollHash.projects,
      ),
    );
  }

  void _onGoToAbout(BuildContext context) {
    Navigator.pushReplacementNamed(
      context,
      HomeRoute.routeName,
      arguments: const HomeRouteArguments(
        scrollHash: HomeScrollHash.about,
      ),
    );
  }
}

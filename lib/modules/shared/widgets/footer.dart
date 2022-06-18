import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      color: AppColors.content,
      padding: const EdgeInsets.all(32),
      child: DefaultTextStyle(
        style: theme.textTheme.bodyMedium!.copyWith(
          color: AppColors.background.withOpacity(.75),
        ),
        child: Column(
          children: [
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Last updated on ',
                  ),
                  TextSpan(
                    text: DateFormat.yMd().format(DateTime.now()),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Website build using ',
                  ),
                  WidgetSpan(
                    child: FlutterLogo(
                      size: theme.textTheme.bodyLarge!.fontSize! + 4,
                    ),
                  ),
                  const TextSpan(
                    text: 'Flutter',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Source code available on ',
                  ),
                  WidgetSpan(
                    child: UrlButton(
                      onPressed: _onGithubUrlPressed,
                      child: const Text(
                        'https://github.com/darius-calugar/darius-calugar-page',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onGithubUrlPressed() {
    launchUrlString('https://github.com/darius-calugar/darius-calugar-page');
  }
}

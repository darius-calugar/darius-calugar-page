import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final textStyle = theme.textTheme.titleMedium!.copyWith(
      color: AppColors.background.withOpacity(.75),
      fontWeight: FontWeight.normal,
    );

    return Container(
      color: AppColors.content,
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'Last updated on ',
                ),
                TextSpan(
                  text: DateFormat().add_yMMM().format(DateTime.now()),
                ),
              ],
            ),
            style: textStyle,
          ),
          const SizedBox(height: 16),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'Website build using ',
                ),
                WidgetSpan(
                  child: FlutterLogo(
                    size: theme.textTheme.titleMedium!.fontSize! + 4,
                  ),
                ),
                const TextSpan(
                  text: 'Flutter',
                ),
              ],
            ),
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

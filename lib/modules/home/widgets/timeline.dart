import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Timeline extends StatelessWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < 3; i++)
          Container(
            height: 2,
            width: 4,
            margin: const EdgeInsets.only(top: 11, right: 4),
            decoration: BoxDecoration(
              color: theme.colorScheme.onBackground,
            ),
          ),
        for (final data in <Map<String, dynamic>>[
          {
            'title': 'CS Student',
            'place': 'Babeș-Bolyai University',
            'startDate': DateTime.now().subtract(const Duration(days: 1000)),
            'endDate': DateTime.now(),
          },
          {
            'title': 'Mobile Development Intern',
            'place': 'Abac Software',
            'startDate': DateTime.now().subtract(const Duration(days: 1000)),
            'endDate': DateTime.now(),
          },
          {
            'title': 'Frontend Developer',
            'place': 'Abac Software',
            'startDate': DateTime.now().subtract(const Duration(days: 1000)),
            'endDate': DateTime.now(),
          },
        ])
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 2,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onBackground,
                        ),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: theme.colorScheme.primary.withOpacity(.25),
                              width: 4,
                            ),
                          ),
                        ),
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        height: 2,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onBackground,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Text(
                        data['title'],
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        data['place'],
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelMedium!.copyWith(
                          color: theme.colorScheme.secondary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Wrap(
                        spacing: 8,
                        children: [
                          Text(
                            DateFormat.yMMM().format(data['startDate']),
                            style: theme.textTheme.labelSmall,
                          ),
                          Text(
                            DateFormat.yMMM().format(data['endDate']),
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        for (var i = 0; i < 3; i++)
          Container(
            height: 2,
            width: 4,
            margin: const EdgeInsets.only(top: 11, left: 4),
            decoration: BoxDecoration(
              color: theme.colorScheme.onBackground,
            ),
          ),
      ],
    );
  }
}

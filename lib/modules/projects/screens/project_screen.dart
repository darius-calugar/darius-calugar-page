import 'package:darius_calugar/modules/projects/models/project_direct_source.dart';
import 'package:darius_calugar/modules/projects/projects.dart';
import 'package:darius_calugar/modules/projects/widgets/project_image_carousel.dart';
import 'package:darius_calugar/modules/projects/widgets/project_platform_card.dart';
import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:darius_calugar/modules/shared/utils/http_utils.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectScreen extends StatelessWidget {
  final Project project;

  const ProjectScreen({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final layout = Layout.of(context);

    return Scaffold(
      body: SelectionArea(
        child: Column(
          children: [
            const Toolbar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: SizedBox(
                        width: layout.isLandscape ? 1000 : null,
                        child: AspectRatio(
                          aspectRatio: layout.isPortrait
                              ? 1
                              : layout.isSquare
                                  ? 4 / 3
                                  : 16 / 9,
                          child: Column(
                            children: [
                              const SizedBox(height: 32),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 32,
                                ),
                                child: FittedBox(
                                  child: Text(
                                    project.name,
                                    style: theme.textTheme.displayMedium,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 32),
                              if (project.images.isNotEmpty)
                                Expanded(
                                  child: Padding(
                                    padding: layout.isLandscape
                                        ? const EdgeInsets.symmetric(
                                            horizontal: 32,
                                          )
                                        : EdgeInsets.zero,
                                    child: ClipRRect(
                                      borderRadius: layout.isLandscape ? BorderRadius.circular(8) : BorderRadius.zero,
                                      child: ProjectImageCarousel(
                                        images: project.images,
                                      ),
                                    ),
                                  ),
                                ),
                              if (layout.isLandscape) const SizedBox(height: 32),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Divider(height: 1),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 32,
                        horizontal: 16,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Description',
                            textAlign: TextAlign.center,
                            style: theme.textTheme.displaySmall,
                          ),
                          const SizedBox(height: 32),
                          Text(
                            project.description,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    const SizedBox(height: 32),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: layout.isPortrait ? 32 : 64,
                      ),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 32,
                        runSpacing: 32,
                        children: [
                          for (final platform in project.platforms)
                            if (project.directSources.any((s) => s.platform == platform))
                              ProjectPlatformCard(
                                platform: platform,
                                children: [
                                  for (final source in project.directSources.where((s) => s.platform == platform))
                                    ElevatedButton(
                                      onPressed: source.available
                                          ? () {
                                              switch (source.type) {
                                                case ProjectDirectSourceType.navigate:
                                                  launchUrlString(source.url);
                                                  break;
                                                case ProjectDirectSourceType.download:
                                                  downloadFile(source.url);
                                                  break;
                                              }
                                            }
                                          : null,
                                      child: AbsorbPointer(
                                        child: Text(
                                          source.available ? source.label : 'Unavailable',
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    if (project.feedbackUrl != null) ...[
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 32,
                          horizontal: 16,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Feedback',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.displaySmall,
                            ),
                            const SizedBox(height: 32),
                            Text(
                              'Please provide feedback about this project.',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineSmall,
                            ),
                            const SizedBox(height: 24),
                            ElevatedButton(
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(const Size.fromRadius(24)),
                                textStyle: MaterialStateProperty.all(theme.textTheme.titleMedium),
                              ),
                              onPressed: () {
                                launchUrlString(project.feedbackUrl!);
                              },
                              child: const AbsorbPointer(
                                child: Text('Leave feedback'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    const Footer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

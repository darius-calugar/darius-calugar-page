import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectImageCarousel extends StatefulWidget {
  final List<String> images;

  const ProjectImageCarousel({
    super.key,
    required this.images,
  });

  @override
  State<ProjectImageCarousel> createState() => _ProjectImageCarouselState();
}

class _ProjectImageCarouselState extends State<ProjectImageCarousel> {
  final PageController _controller = PageController();

  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: Colors.black87,
            child: PageView(
              controller: _controller,
              children: [
                for (final image in widget.images)
                  Image.network(
                    image,
                    fit: BoxFit.contain,
                  ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          top: null,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface.withOpacity(.5),
                  border: Border(
                    top: BorderSide(
                      color: theme.colorScheme.surface,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < widget.images.length; i++)
                      Container(
                        height: lerpDouble(16, 12, _pageViewportFraction(i)),
                        width: lerpDouble(16, 32, _pageViewportFraction(i)),
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color.lerp(
                            theme.colorScheme.onSurface,
                            theme.colorScheme.primary,
                            _pageViewportFraction(i),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          right: null,
          left: 16,
          child: Center(
            child: ClipOval(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Material(
                  color: theme.colorScheme.surface.withOpacity(.5),
                  shape: CircleBorder(
                    side: BorderSide(
                      color: theme.colorScheme.surface,
                      width: 1,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () => _controller.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                    ),
                    padding: const EdgeInsets.all(16),
                    icon: const Icon(
                      FontAwesomeIcons.chevronLeft,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          left: null,
          right: 16,
          child: Center(
            child: ClipOval(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Material(
                  color: theme.colorScheme.surface.withOpacity(.5),
                  shape: CircleBorder(
                    side: BorderSide(
                      color: theme.colorScheme.surface,
                      width: 1,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () => _controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                    ),
                    iconSize: 32,
                    padding: const EdgeInsets.all(16),
                    icon: const Icon(
                      FontAwesomeIcons.chevronRight,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  double _pageViewportFraction(int page) {
    return (1 - (_currentPage - page).abs()).clamp(0, 1);
  }
}

import 'package:darius_calugar/modules/home/home.dart';
import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final HomeScrollHash scrollHash;

  const HomeScreen({
    Key? key,
    HomeScrollHash? scrollHash,
  })  : scrollHash = scrollHash ?? HomeScrollHash.display,
        super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _displaySectionKey = GlobalKey();
  final _projectsSectionKey = GlobalKey();
  final _aboutSectionKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      scrollToHash(widget.scrollHash);
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final sectionSize = mediaQuery.size - const Offset(0, kToolbarHeight) as Size;

    return Scaffold(
      body: SelectionArea(
        child: FractionallySizedBox(
          heightFactor: 1,
          child: Stack(
            children: [
              Positioned.fill(
                top: kToolbarHeight,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox.fromSize(
                        size: sectionSize,
                        child: HomeDisplaySection(
                          key: _displaySectionKey,
                        ),
                      ),
                      const Divider(height: 2),
                      HomeProjectsSection(
                        key: _projectsSectionKey,
                      ),
                      const Divider(height: 2),
                      HomeAboutSection(
                        key: _aboutSectionKey,
                      ),
                      const Footer(),
                    ],
                  ),
                ),
              ),
              Material(
                elevation: 1,
                child: Toolbar(
                  onDisplayPressed: () => scrollToHash(HomeScrollHash.display),
                  onProjectsPressed: () => scrollToHash(HomeScrollHash.projects),
                  onAboutPressed: () => scrollToHash(HomeScrollHash.about),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void scrollToHash(HomeScrollHash scrollHash) {
    GlobalKey sectionKey;
    switch (scrollHash) {
      case HomeScrollHash.display:
        sectionKey = _displaySectionKey;
        break;
      case HomeScrollHash.about:
        sectionKey = _aboutSectionKey;
        break;
      case HomeScrollHash.projects:
        sectionKey = _projectsSectionKey;
        break;
      default:
        return;
    }

    Scrollable.ensureVisible(
      sectionKey.currentContext!,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}

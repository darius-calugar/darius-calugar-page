import 'package:darius_calugar/modules/home/home.dart';
import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final sectionSize = mediaQuery.size - const Offset(0, kToolbarHeight) as Size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            primary: true,
            floating: true,
            elevation: 1,
            title: Toolbar(),
          ),
          SliverToBoxAdapter(
            child: SelectionArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox.fromSize(
                    size: sectionSize,
                    child: const HomeDisplaySection(),
                  ),
                  const Divider(height: 2),
                  const HomeProjectsSection(),
                  const Divider(height: 2),
                  const HomeAboutSection(),
                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

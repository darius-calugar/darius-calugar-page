part of home;

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
            floating: true,
            elevation: 1,
            title: Toolbar(),
          ),
          SliverToBoxAdapter(
            child: SizedBox.fromSize(
              size: sectionSize,
              child: const HomeDisplaySection(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(
              height: 2,
            ),
          ),
          const SliverToBoxAdapter(
            child: HomeProjectsSection(),
          ),
          const SliverToBoxAdapter(
            child: Divider(
              height: 2,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox.fromSize(
              size: sectionSize,
              child: const HomeAboutSection(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Footer(),
          ),
        ],
      ),
    );
  }
}

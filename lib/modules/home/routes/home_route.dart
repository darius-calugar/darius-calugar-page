part of home;

class HomeRoute extends StatelessWidget {
  static const routeName = '/home';

  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}

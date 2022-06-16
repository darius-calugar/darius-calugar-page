import 'package:darius_calugar/modules/home/home.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget with RouteAware {
  static const routeName = '/home';

  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as HomeRouteArguments?;

    return HomeScreen(
      scrollHash: arguments?.scrollHash,
    );
  }
}

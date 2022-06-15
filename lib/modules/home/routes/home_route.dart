import 'package:darius_calugar/modules/home/home.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  static const routeName = '/home';

  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}

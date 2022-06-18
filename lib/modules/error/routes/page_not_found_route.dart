import 'package:darius_calugar/modules/error/screens/page_not_found_screen.dart';
import 'package:flutter/material.dart';

class PageNotFoundRoute extends StatelessWidget {
  static const routeName = '/404';

  const PageNotFoundRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageNotFoundScreen();
  }
}

import 'dart:html';

import 'package:darius_calugar/modules/error/routes/page_not_found_route.dart';
import 'package:darius_calugar/modules/home/home.dart';
import 'package:darius_calugar/modules/projects/projects.dart';
import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProjectsProvider>(
          create: (_) => ProjectsProvider(),
        ),
      ],
      child: MaterialApp(
        initialRoute: HomeRoute.routeName,
        routes: {
          HomeRoute.routeName: (context) => const HomeRoute(),
        },
        onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => const PageNotFoundRoute(),
        ),
        theme: AppTheme.themeData,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

import 'package:darius_calugar/modules/home/home.dart';
import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeRoute.routeName,
      routes: {
        HomeRoute.routeName: (context) => const HomeRoute(),
      },
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
    );
  }
}

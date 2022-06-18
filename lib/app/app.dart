import 'package:darius_calugar/app/app_providers.dart';
import 'package:darius_calugar/app/app_router.dart';
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
    return AppProviders(
      child: MaterialApp(
        theme: AppTheme.themeData,
        debugShowCheckedModeBanner: false,
        home: AppRouter(),
      ),
    );
  }
}

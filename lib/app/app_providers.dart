import 'package:darius_calugar/modules/projects/projects.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProviders extends StatelessWidget {
  final Widget child;

  const AppProviders({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProjectsProvider>(
          create: (_) => ProjectsProvider(),
        ),
      ],
      child: child,
    );
  }
}

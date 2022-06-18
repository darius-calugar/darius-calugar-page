import 'package:darius_calugar/modules/error/screens/page_not_found_screen.dart';
import 'package:darius_calugar/modules/home/home.dart';
import 'package:darius_calugar/modules/projects/projects.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AppRouter extends StatelessWidget {
  AppRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Router(
      routerDelegate: _goRouter.routerDelegate,
      routeInformationParser: _goRouter.routeInformationParser,
      routeInformationProvider: _goRouter.routeInformationProvider,
    );
  }

  final GoRouter _goRouter = GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: HomeScreen(
            section: {
              'display': HomeSection.display,
              'projects': HomeSection.projects,
              'about': HomeSection.about,
            }[state.queryParams['section']],
          ),
        ),
      ),
      GoRoute(
        path: '/project/:id',
        pageBuilder: (context, state) {
          final projectId = int.tryParse(state.params['id'] ?? '');
          if (projectId == null) throw Error();
          final project = Provider.of<ProjectsProvider>(context, listen: false)
              .projects
              .firstWhere((project) => project.id == projectId);

          return MaterialPage(
            key: state.pageKey,
            child: ProjectScreen(
              project: project,
            ),
          );
        },
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const PageNotFoundScreen(),
    ),
  );
}

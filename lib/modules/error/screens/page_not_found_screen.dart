import 'package:darius_calugar/modules/home/home.dart';
import 'package:flutter/material.dart';

class PageNotFoundScreen extends StatelessWidget {
  const PageNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404',
              style: theme.textTheme.displayLarge,
            ),
            Text(
              'Page not found!',
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, HomeRoute.routeName),
              child: const Text('Take me home'),
            ),
          ],
        ),
      ),
    );
  }
}

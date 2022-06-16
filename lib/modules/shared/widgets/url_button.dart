import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';

class UrlButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;

  const UrlButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onPressed,
        child: DefaultTextStyle.merge(
          style: TextStyle(
            color: theme.colorScheme.secondary,
            decoration: TextDecoration.underline,
          ),
          child: AbsorbPointer(
            child: child,
          ),
        ),
      ),
    );
  }
}

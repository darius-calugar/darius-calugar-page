import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData _fallbackThemeData = ThemeData.fallback();

  static final ThemeData themeData = ThemeData.from(
    colorScheme: const ColorScheme(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.background,
      background: AppColors.background,
      error: Colors.red,
      onPrimary: AppColors.background,
      onSecondary: AppColors.background,
      onSurface: AppColors.content,
      onBackground: AppColors.content,
      onError: AppColors.background,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      displayLarge: _fallbackThemeData.textTheme.displayLarge!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: _fallbackThemeData.textTheme.displayMedium!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: _fallbackThemeData.textTheme.displaySmall!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: _fallbackThemeData.textTheme.headlineLarge!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
      ),
      headlineMedium: _fallbackThemeData.textTheme.headlineMedium!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
      ),
      headlineSmall: _fallbackThemeData.textTheme.headlineSmall!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
      ),
      titleLarge: _fallbackThemeData.textTheme.titleLarge!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: _fallbackThemeData.textTheme.titleMedium!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: _fallbackThemeData.textTheme.titleSmall!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: _fallbackThemeData.textTheme.bodyLarge!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
      ),
      bodyMedium: _fallbackThemeData.textTheme.bodyMedium!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
      ),
      bodySmall: _fallbackThemeData.textTheme.bodySmall!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
      ),
      labelLarge: _fallbackThemeData.textTheme.labelLarge!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
      ),
      labelMedium: _fallbackThemeData.textTheme.labelMedium!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
      ),
      labelSmall: _fallbackThemeData.textTheme.labelSmall!.copyWith(
        fontFamily: 'FiraSans',
        color: AppColors.content,
      ),
    ),
  ).copyWith(
    backgroundColor: AppColors.background,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(
      color: AppColors.background,
      foregroundColor: AppColors.content,
    ),
    splashColor: AppColors.primary.withOpacity(.5),
  );
}

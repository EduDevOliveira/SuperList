import 'package:flutter/material.dart';
import 'color_schemes.dart';
import 'text_styles.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    textTheme: const TextTheme(
      titleLarge: AppTextStyles.title,
      bodyMedium: AppTextStyles.body,
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
    textTheme: const TextTheme(
      titleLarge: AppTextStyles.title,
      bodyMedium: AppTextStyles.body,
    ),
  );
}

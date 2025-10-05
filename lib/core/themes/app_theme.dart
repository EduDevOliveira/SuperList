import 'package:flutter/material.dart';
import 'package:supertodolist/core/themes/input_theme.dart';
import 'color_schemes.dart';
import 'text_styles.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    textTheme: const TextTheme(
      bodySmall: AppTextStyles.bodySmall,
      bodyMedium: AppTextStyles.bodyMedium,
      bodyLarge: AppTextStyles.bodyLarge,
      titleSmall: AppTextStyles.titleSmall,
      titleMedium: AppTextStyles.titleMedium,
      titleLarge: AppTextStyles.titleLarge,
    ),
    inputDecorationTheme: inputDecoration,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightColorScheme.surfaceContainer,
      selectedItemColor: lightColorScheme.primary,
      selectedIconTheme: IconThemeData(
        size: 28,
      ),
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
    textTheme: const TextTheme(
      bodySmall: AppTextStyles.bodySmall,
      bodyMedium: AppTextStyles.bodyMedium,
      bodyLarge: AppTextStyles.bodyLarge,
      titleSmall: AppTextStyles.titleSmall,
      titleMedium: AppTextStyles.titleMedium,
      titleLarge: AppTextStyles.titleLarge,
    ),
    inputDecorationTheme: inputDarkDecoration,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkColorScheme.surfaceContainer,
      selectedItemColor: darkColorScheme.primary,
      selectedIconTheme: IconThemeData(
        size: 28,
      ),
    ),
  );
}

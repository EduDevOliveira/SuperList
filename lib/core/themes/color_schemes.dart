import 'package:flutter/material.dart';
import 'package:supertodolist/core/themes/app_color.dart';

final lightColorScheme = ColorScheme.highContrastLight(
  brightness: Brightness.light,
  primary: AppColor.primaryColor,
  onPrimary: AppColor.onPrimaryColor,
  secondary: AppColor.secondaryColor,
  onSecondary: AppColor.onSecondaryColor,
  tertiary: AppColor.tertiaryColor,
  onTertiary: AppColor.onTertiaryColor,
  surface: AppColor.surfaceColor,
  onSurface: AppColor.onSurfaceColor,
  surfaceContainer: AppColor.onSurfaceContainerColor,
  outline: AppColor.outlineColor,
  error: AppColor.erroColor,
  onError: AppColor.onErroColor,
);

final darkColorScheme = ColorScheme.highContrastDark(
  brightness: Brightness.dark,
  primary: AppColor.primaryColor,
  onPrimary: AppColor.onPrimaryColor,
  secondary: AppColor.secondaryColor,
  onSecondary: AppColor.onSecondaryColor,
  tertiary: AppColor.tertiaryColor,
  onTertiary: AppColor.onTertiaryColor,
  surface: AppColor.surfaceDarkColor,
  onSurface: AppColor.onSurfaceDarkColor,
  surfaceContainer: AppColor.onSurfaceContainerDarkColor,
  outline: AppColor.outlineColor,
  error: AppColor.erroColor,
  onError: AppColor.onErroColor,
);

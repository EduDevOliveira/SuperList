import 'package:flutter/material.dart';
import 'package:supertodolist/core/themes/app_color.dart';

final inputDecoration = InputDecorationThemeData(
  fillColor: AppColor.onPrimaryColor,
  filled: true,
  hintStyle: TextStyle(
    color: AppColor.outlineColor,
  ),
  labelStyle: TextStyle(
    color: AppColor.outlineColor,
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(25),
  ),
);

final inputDarkDecoration = InputDecorationThemeData(
  fillColor: AppColor.onSurfaceContainerDarkColor,
  filled: true,
  hintStyle: TextStyle(
    color: AppColor.outlineColor,
  ),
  labelStyle: TextStyle(
    color: AppColor.outlineColor,
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(25),
  ),
);

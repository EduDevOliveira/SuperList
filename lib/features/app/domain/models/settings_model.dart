import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class SettingsModel extends Equatable {
  final ThemeMode? themeMode;

  const SettingsModel({
    this.themeMode,
  });

  @override
  List<Object?> get props => [themeMode];

  SettingsModel copyWith({
    ThemeMode? themeMode,
  }) {
    return SettingsModel(
      themeMode: themeMode ?? this.themeMode,
    );
  }
}

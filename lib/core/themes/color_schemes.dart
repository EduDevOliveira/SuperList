import 'package:flutter/material.dart';

// const seedColor = Colors.red;
// const seedColor = Color(0xFFD32F2F); // vermelho intenso
// const seedColor = Color(0xFFB71C1C); // vermelho sangue escuro
const seedColor = Color.fromARGB(255, 23, 92, 184);

final lightColorScheme = ColorScheme.fromSeed(
  seedColor: seedColor,
  brightness: Brightness.light,
);

final darkColorScheme = ColorScheme.fromSeed(
  seedColor: seedColor,
  brightness: Brightness.dark,
);
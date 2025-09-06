import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/bootstrap.dart';
import 'package:todolist/features/app/app_module.dart';
import 'package:todolist/features/app/app_widget.dart';

void main() async {
  await Bootstrap.init();
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}

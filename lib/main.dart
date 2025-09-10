import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:supertodolist/bootstrap.dart';
import 'package:supertodolist/features/app/app_module.dart';
import 'package:supertodolist/features/app/presentation/app_widget.dart';

void main() async {
  await Bootstrap.init();
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}

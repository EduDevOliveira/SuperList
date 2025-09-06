import 'package:flutter/material.dart';
import 'package:todolist/core/initialization/services/flavor_service.dart';
import 'package:todolist/core/initialization/services/firebase_sevice.dart';
import 'package:todolist/core/initialization/services/logger_service.dart';
import 'package:todolist/core/initialization/services/shared_preferences_service.dart';

class Bootstrap {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Configurar flavor
    await FlavorService.setupFlavor();

    // Inicializar Firebase
    await FirebaseService.init();

    // Inicializar SharedPreferences
    await SharedPreferencesService.init();

    // Configurar Logger
    LoggerService.init();

    // Aqui você pode inicializar outros serviços globais
    // como HTTP client, Analytics, Crashlytics, etc.
  }
}

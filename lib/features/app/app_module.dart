import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/core/initialization/services/firebase_sevice.dart';
import 'package:todolist/core/initialization/services/shared_preferences_service.dart';
import 'package:todolist/features/app/presentation/bloc/app/app_bloc.dart';
import 'package:todolist/features/app/presentation/bloc/settings/settings_bloc.dart';
import 'package:todolist/features/home/home_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addInstance(SharedPreferencesService.instance);
    i.addInstance(FirebaseService.instance);
    i.addSingleton(AppBloc.new);
    i.addSingleton(SettingsBloc.new);
  }

  @override
  void routes(r) {
    r.module(Modular.initialRoute, module: HomeModule());
  }
}

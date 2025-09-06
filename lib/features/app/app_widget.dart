import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/features/app/presentation/bloc/app/app_bloc.dart';
import 'package:todolist/features/app/presentation/bloc/settings/settings_bloc.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final appBloc = Modular.get<AppBloc>();
  final settingsBloc = Modular.get<SettingsBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      bloc: appBloc,
      listener: (context, appState) {},
      builder: (context, appState) {
        return BlocBuilder<SettingsBloc, SettingsState>(
          bloc: settingsBloc,
          builder: (context, settingsState) {
            return MaterialApp.router(
              title: 'TodoList',
              theme: ThemeData(
                brightness: Brightness.light,
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
              ),
              themeMode: settingsState.settings.themeMode,
              routerConfig: Modular.routerConfig,
            );
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/features/app/presentation/bloc/app/app_bloc.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final appBloc = Modular.get<AppBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      bloc: appBloc,
      listener: (context, appState) {},
      builder: (context, appState) {
        return MaterialApp.router(
          title: 'TodoList',
          theme: ThemeData(
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          themeMode: appState.themeMode,
          routerConfig: Modular.routerConfig,
        );
      },
    );
  }
}

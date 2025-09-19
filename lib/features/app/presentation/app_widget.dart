import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:supertodolist/core/themes/app_theme.dart';
import 'package:supertodolist/features/app/presentation/bloc/app_bloc.dart';

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
          title: 'Supertodolist',
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: ThemeMode.light,
          routerConfig: Modular.routerConfig,
        );
      },
    );
  }
}

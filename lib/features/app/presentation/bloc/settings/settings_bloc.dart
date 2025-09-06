import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/features/app/domain/models/settings_model.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState()) {
    on<ChangedTheme>(_changedTheme);
  }

  _changedTheme(ChangedTheme event, Emitter emit) {
    emit(
      state.copyWith(
        settings: state.settings.themeMode == ThemeMode.dark
            ? SettingsModel(themeMode: ThemeMode.light)
            : SettingsModel(themeMode: ThemeMode.dark),
      ),
    );
  }
}

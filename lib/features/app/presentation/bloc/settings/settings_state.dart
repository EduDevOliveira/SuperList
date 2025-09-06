part of 'settings_bloc.dart';

enum SettingsStatus { initial, loading, loaded, error }

class SettingsState extends Equatable {
  final SettingsStatus status;
  final SettingsModel settings;

  const SettingsState({
    this.status = SettingsStatus.initial,
    this.settings = const SettingsModel(themeMode: ThemeMode.dark),
  });

  SettingsState copyWith({
    SettingsStatus? status,
    SettingsModel? settings,
  }) {
    return SettingsState(
      status: status ?? this.status,
      settings: settings ?? this.settings,
    );
  }

  @override
  List<Object> get props => [settings, status];
}

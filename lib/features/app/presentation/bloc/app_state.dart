part of 'app_bloc.dart';

enum AppStatus {
  initial,
  logged,
  nlogged,
  error,
}

class AppState extends Equatable {
  final AppStatus status;
  final ThemeMode themeMode;

  const AppState({
    this.status = AppStatus.initial,
    this.themeMode = ThemeMode.dark,
  });

  AppState copyWith({
    AppStatus? status,
    ThemeMode? themeMode,
  }) {
    return AppState(
      status: status ?? this.status,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  @override
  List<Object> get props => [status, themeMode];
}

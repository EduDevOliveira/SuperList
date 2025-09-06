part of 'app_bloc.dart';

class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

class AppInitial extends AppState {}

class AppLogged extends AppState {}

class AppNotLogged extends AppState {}

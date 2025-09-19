import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:supertodolist/features/app/presentation/bloc/app_bloc.dart';

void main() {
  group('AppBloc', () {
    late AppBloc bloc;

    setUp(() {
      bloc = AppBloc();
    });

    tearDown(() {
      bloc.close();
    });

    test('Estado incial deve ser ThemeMode.dark', () {
      expect(bloc.state.themeMode, ThemeMode.light);
    });

    blocTest(
      'Deve alterar ThemeMode para ThemeMode.light quando Evento ChangedTheme for chamado',
      build: () => bloc,
      act: (bloc) {
        bloc.add(ChangedTheme());
        bloc.add(ChangedTheme());
      },
      expect: () => [
        isA<AppState>().having((s) => s.themeMode, 'themeMode', ThemeMode.dark),
        isA<AppState>().having((s) => s.themeMode, 'themeMode', ThemeMode.light),
      ],
    );
  });
}

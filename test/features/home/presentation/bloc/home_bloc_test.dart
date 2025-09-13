import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:supertodolist/features/home/presentation/bloc/home_bloc.dart';

void main() {
  group('HomeBloc Test', () {
    late final HomeBloc bloc;

    setUpAll(() {
      bloc = HomeBloc();
    });

    test('Estado inicial deve ser HomeState(value: 0)', () {
      expect(bloc.state, equals(HomeState(value: 0)));
    });

    blocTest<HomeBloc, HomeState>(
      'Emite [HomeState(value: 1)] quando HomeEventIncrement é adicionado',
      build: () => bloc,
      act: (bloc) => bloc.add(HomeEventIncrement()),
      expect: () => [HomeState(value: 1)],
    );

    // blocTest<HomeBloc, HomeState>(
    //   'Emite [HomeState(value: 2)] quando HomeEventIncrement é adicionado',
    //   build: () => bloc,
    //   act: (bloc) {
    //     bloc.add(HomeEventIncrement());
    //     bloc.add(HomeEventIncrement());
    //   },
    //   expect: () => [
    //     HomeState(value: 1),
    //     HomeState(value: 2),
    //   ],
    // );
  });
}

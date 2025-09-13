import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<HomeEventIncrement>(_increment);
    on<HomeEventDecrement>(_decrement);
  }

  _increment(HomeEventIncrement event, Emitter emit) {
    emit(
      state.copyWith(
        value: state.value + 1,
      ),
    );
  }

  _decrement(HomeEventDecrement event, Emitter emit) {
    emit(
      state.copyWith(
        value: state.value - 1,
      ),
    );
  }
}

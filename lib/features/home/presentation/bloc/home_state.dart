part of 'home_bloc.dart';

class HomeState extends Equatable {
  final int value;

  const HomeState({
    this.value = 0,
  });

  HomeState copyWith({
    int? value,
  }) {
    return HomeState(
      value: value ?? this.value,
    );
  }

  @override
  List<Object> get props => [value];
}

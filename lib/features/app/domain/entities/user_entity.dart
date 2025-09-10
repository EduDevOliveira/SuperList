import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String name;
  final String username;

  const UserEntity({
    required this.name,
    required this.username,
  });

  @override
  List<Object?> get props => [name, username];
}

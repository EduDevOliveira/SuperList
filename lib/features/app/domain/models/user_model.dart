import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String name;
  final String username;

  const UserModel({
    required this.name,
    required this.username,
  });

  @override
  List<Object?> get props => [name, username];
}

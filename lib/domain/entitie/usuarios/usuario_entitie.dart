import 'package:equatable/equatable.dart';

class Usuario extends Equatable {
  final String name;
  final String email;
  final String? password;
  final String? passwordConfirmation;
  final String? updatedAt;
  final String? createdAt;
  final int id;
  final String? token;

  const Usuario(
      {required this.name,
      required this.email,
      required this.password,
      required this.passwordConfirmation,
      required this.updatedAt,
      required this.createdAt,
      required this.id,
      required this.token});

  @override
  List<Object?> get props => [
        name,
        email,
        password,
        passwordConfirmation,
        updatedAt,
        createdAt,
        id,
        token
      ];
}

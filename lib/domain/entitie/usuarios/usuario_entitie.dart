import 'package:equatable/equatable.dart';

class Usuario extends Equatable {
  final String? username;
  final String? email;
  final String? password;
  final String? passwordConfirmation;
  final String? token;

  const Usuario(
      {required this.username,
      required this.email,
      required this.password,
      required this.passwordConfirmation,
      required this.token});

  @override
  List<Object?> get props => [
        username,
        email,
        password,
        passwordConfirmation,
        token
      ];
}

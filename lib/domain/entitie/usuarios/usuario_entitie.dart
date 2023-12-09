import 'package:equatable/equatable.dart';

class Usuario extends Equatable {
  final String? username;
  final String? email;
  final bool? estado;
  final String? password;
  final String? passwordTwo;
  final String? token;

  const Usuario(
      {required this.username,
      required this.email,
      required this.estado,
      required this.password,
      required this.passwordTwo,
      required this.token});

  @override
  List<Object?> get props => [
        username,
        email,
        estado,
        password,
        passwordTwo,
        token
      ];
}

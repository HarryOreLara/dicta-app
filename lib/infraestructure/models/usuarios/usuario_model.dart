import 'dart:convert';

import 'package:dicta_app/config/utils/typedef.dart';
import 'package:dicta_app/domain/entitie/usuarios/usuario_entitie.dart';

class UsuarioModel extends Usuario {
  const UsuarioModel(
      {required super.username,
      required super.email,
      required super.password,
      required super.passwordConfirmation,
      required super.token});

  const UsuarioModel.empty()
      : this(
            username: '_empty_name',
            email: '_empty_email',
            password: '_empty_password',
            passwordConfirmation: '_empty_passwordConfirmation',
            token: '_empty_token');

  factory UsuarioModel.fromJson(String source) =>
      UsuarioModel.fromMap(jsonDecode(source) as DataMap);

  UsuarioModel.fromMap(DataMap map)
      : this(
            username: map['username'] as String,
            email: map['email'] as String,
            password: map['password'] as String,
            passwordConfirmation: map['passwordConfirmation'] as String,
            token: map['token'] as String);

  UsuarioModel copyWith(
      {final String? username,
      final String? email,
      final String? password,
      final String? passwordConfirmation,
      final String? updatedAt,
      final String? createdAt,
      final int? id,
      final String? token}) {
    return UsuarioModel(
        username: username ?? this.username,
        email: email ?? this.email,
        password: password ?? this.password,
        passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
        token: token ?? this.token);
  }

  DataMap toMap() => {
        "username": username,
        "email": email,
        "password": password,
        "password_confirmation": passwordConfirmation,
        "token": token
      };

  String toJson() => jsonEncode(toMap());
}

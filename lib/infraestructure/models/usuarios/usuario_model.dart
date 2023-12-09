import 'dart:convert';

import 'package:dicta_app/config/utils/typedef.dart';
import 'package:dicta_app/domain/entitie/usuarios/usuario_entitie.dart';

class UsuarioModel extends Usuario {
  const UsuarioModel(
      {required super.username,
      required super.email,
      required super.estado,
      required super.password,
      required super.passwordTwo,
      required super.token});

  const UsuarioModel.empty()
      : this(
            username: '_empty_name',
            email: '_empty_email',
            estado: true,
            password: '_empty_password',
            passwordTwo: '_empty_passwordTwo',
            token: '_empty_token');

  factory UsuarioModel.fromJson(String source) =>
      UsuarioModel.fromMap(jsonDecode(source) as DataMap);

  UsuarioModel.fromMap(DataMap map)
      : this(
            username: map['username'] as String,
            email: map['email'] as String,
            estado: map['estado'] as bool,
            password: map['password'] as String,
            passwordTwo: map['passwordTwo'] as String,
            token: map['token'] as String);

  UsuarioModel copyWith(
      {final String? username,
      final String? email,
      final bool? estado,
      final String? password,
      final String? passwordTwo,
      final String? updatedAt,
      final String? createdAt,
      final int? id,
      final String? token}) {
    return UsuarioModel(
        username: username ?? this.username,
        email: email ?? this.email,
        estado: estado ?? this.estado,
        password: password ?? this.password,
        passwordTwo: passwordTwo ?? this.passwordTwo,
        token: token ?? this.token);
  }

  DataMap toMap() => {
        "username": username,
        "email": email,
        "estado":estado,
        "password": password,
        "passwordTwo": passwordTwo,
        "token": token
      };

  String toJson() => jsonEncode(toMap());
}

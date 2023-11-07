import 'dart:convert';

import 'package:dicta_app/config/utils/typedef.dart';
import 'package:dicta_app/domain/entitie/usuarios/usuario_entitie.dart';

class UsuarioModel extends Usuario {
  const UsuarioModel(
      {required super.name,
      required super.email,
      required super.password,
      required super.passwordConfirmation,
      required super.updatedAt,
      required super.createdAt,
      required super.id,
      required super.token});

  const UsuarioModel.empty()
      : this(
            name: '_empty_name',
            email: '_empty_email',
            password: '_empty_password',
            passwordConfirmation: '_empty_passwordConfirmation',
            updatedAt: '_empty_updatedAt',
            createdAt: '_empty_createdAt',
            id: 1,
            token: '_empty_token');

  factory UsuarioModel.fromJson(String source) =>
      UsuarioModel.fromMap(jsonDecode(source) as DataMap);

  UsuarioModel.fromMap(DataMap map)
      : this(
            name: map['name'] as String,
            email: map['email'] as String,
            password: map['password'] as String,
            passwordConfirmation: map['passwordConfirmation'] as String,
            updatedAt: map['updated_at'] as String,
            createdAt: map['created_at'] as String,
            id: map['id'] as int,
            token: map['token'] as String);

  UsuarioModel copyWith(
      {final String? name,
      final String? email,
      final String? password,
      final String? passwordConfirmation,
      final String? updatedAt,
      final String? createdAt,
      final int? id,
      final String? token}) {
    return UsuarioModel(
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password,
        passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
        updatedAt: updatedAt ?? this.updatedAt,
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        token: token ?? this.token);
  }

  DataMap toMap() => {
        "name": name,
        "email": email,
        "password": password,
        "password_confirmation": passwordConfirmation,
        "updatedAt": updatedAt,
        "createdAt": createdAt,
        "id": id,
        "token": token
      };

  String toJson() => jsonEncode(toMap());
}

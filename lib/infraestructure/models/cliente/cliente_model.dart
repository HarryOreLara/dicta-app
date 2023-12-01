import 'dart:convert';

import 'package:dicta_app/config/utils/typedef.dart';
import 'package:dicta_app/domain/entitie/entitie.dart';

class ClienteModel extends Cliente {
  const ClienteModel.empty()
      : this(
            id: "1",
            nombre: "_empty_nombre",
            apellidos: "_empty_apellidos",
            edad: "_empty_edad",
            email: "_empty_email",
            genero: "_empty_genero");
  const ClienteModel(
      {required super.id,
      required super.nombre,
      required super.apellidos,
      required super.edad,
      required super.email,
      required super.genero});

  factory ClienteModel.fromJson(String source) =>
      ClienteModel.fromMap(jsonDecode(source) as DataMap);

  ClienteModel.fromMap(DataMap map)
      : this(
            id: map["_id"] as String,
            nombre: map["nombre"] as String,
            apellidos: map["apellidos"] as String,
            edad: map["edad"] as String,
            email: map["email"] as String,
            genero: map["genero"] as String);
  DataMap toMap() => {
        'id': id,
        'nombre': nombre,
        'apellidos': apellidos,
        'edad': edad,
        'email': email,
        'genero': genero
      };

  String toJson() => jsonEncode(toMap());
}

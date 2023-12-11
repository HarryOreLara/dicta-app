import 'dart:convert';

import 'package:dicta_app/config/utils/typedef.dart';
import 'package:dicta_app/domain/entitie/entitie.dart';

class PersonaModel extends Persona {
  const PersonaModel.empty()
      : this(
            id: 1,
            nombre: "_empty_nombre",
            apellidoPat: "_empty_apellidoPat",
            apellidoMat: "_empty_apellidoMat",
            dni: "_empty_dni",
            edad: "_empty_edad",
            telefono: "_empty_telefono",
            genero: "_empty_genero",
            idUsuario: 1);
  const PersonaModel(
      {required super.id,
      required super.nombre,
      required super.edad,
      required super.genero,
      required super.apellidoPat,
      required super.apellidoMat,
      required super.dni,
      required super.telefono,
      required super.idUsuario});

  factory PersonaModel.fromJson(String source) =>
      PersonaModel.fromMap(jsonDecode(source) as DataMap);

  PersonaModel.fromMap(DataMap map)
      : this(
            id: map["_id"] as int,
            nombre: map["nombre"] as String,
            apellidoPat: map["apellidoPat"] as String,
            apellidoMat: map["apellidoMat"] as String,
            dni: map["dni"] as String,
            edad: map["edad"] as String,
            telefono: map["telefono"] as String,
            genero: map["genero"] as String,
            idUsuario: map["idUsuario"] as int);
  DataMap toMap() => {
        'id': id,
        'nombre': nombre,
        'apellidoPat': apellidoPat,
        'apellidoMat': apellidoMat,
        'dni': dni,
        'edad': edad,
        'telefono': telefono,
        'genero': genero,
        'idUsuario': idUsuario
      };

  String toJson() => jsonEncode(toMap());
}

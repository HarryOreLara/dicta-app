import 'dart:convert';

import 'package:dicta_app/config/utils/typedef.dart';
import 'package:dicta_app/domain/entitie/entitie.dart';

class CursoModel extends Curso {
  const CursoModel(
      {required super.id,
      required super.nombre,
      required super.precio,
      required super.categoria});

  const CursoModel.empty()
      : this(
            id: "1",
            nombre: "_empty_nombre",
            precio: 1.0,
            categoria: "_empty_categoria");

  factory CursoModel.fromJson(String source) =>
      CursoModel.frommap(jsonDecode(source) as DataMap);

  CursoModel.frommap(DataMap map)
      : this(
            id: map["_id"] as String,
            nombre: map["nombre"] as String,
            precio: map["precio"] as double,
            categoria: map["categoria"] as String);

  CursoModel copyWith(
      {String? id, String? nombre, double? precio, String? categoria}) {
    return CursoModel(
        id: id ?? this.id,
        nombre: nombre ?? this.nombre,
        precio: precio ?? this.precio,
        categoria: categoria ?? this.categoria);
  }

  DataMap toMap() =>
      {'_id': id, 'nombre': nombre, 'precio': precio, 'categoria': categoria};

  String toJson() => jsonEncode(toMap());
}

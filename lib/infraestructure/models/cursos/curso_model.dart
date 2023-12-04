import 'dart:convert';

import 'package:dicta_app/config/utils/typedef.dart';
import 'package:dicta_app/domain/entitie/cursos/secciones.dart';
import 'package:dicta_app/domain/entitie/entitie.dart';

class CursoModel extends Curso {
  const CursoModel(
      {required super.id,
      required super.nombre,
      required super.precio,
      required super.categoria,
      required super.fechaPublicacion,
      required super.imagencurso,
      required super.estado,
      required super.nombreCreador,
      required super.secciones});

  const CursoModel.empty()
      : this(
            id: "1",
            nombre: "_empty_nombre",
            fechaPublicacion: "_empty_fecha",
            imagencurso: "_empty_imagen",
            estado: "_empty_estado",
            nombreCreador: "_empty_nombreCreador",
            secciones: const [],
            precio: 1.0,
            categoria: "_empty_categoria");

  factory CursoModel.fromJson(String source) =>
      CursoModel.frommap(jsonDecode(source) as DataMap);

  CursoModel.frommap(DataMap map)
      : this(
            id: map["_id"] as String,
            nombre: map["nombre"] as String,
            precio: map["precio"] as double,
            categoria: map["categoria"] as String,
            fechaPublicacion: map["fechaPublicacion"] as String,
            imagencurso: map["imagencurso"] as String,
            estado: map["estado"] as String,
            nombreCreador: map["nombreCreador"] as String,
            secciones: map["secciones"] as List<Secciones>);

  CursoModel copyWith(
      {String? id,
      String? nombre,
      double? precio,
      String? categoria,
      String? fechaPublicacion,
      String? imagencurso,
      String? estado,
      String? nombreCreador,
      List<Secciones>? secciones}) {
    return CursoModel(
        id: id ?? this.id,
        nombre: nombre ?? this.nombre,
        precio: precio ?? this.precio,
        categoria: categoria ?? this.categoria,
        fechaPublicacion: fechaPublicacion ?? this.fechaPublicacion,
        imagencurso: imagencurso ?? this.imagencurso,
        estado: estado ?? this.estado,
        nombreCreador: nombreCreador ?? this.nombreCreador,
        secciones: secciones ?? this.secciones);
  }

  DataMap toMap() => {
        '_id': id,
        'nombre': nombre,
        'precio': precio,
        'categoria': categoria,
        'fechaPublicacion': fechaPublicacion,
        'imagencurso': imagencurso,
        'estado': estado,
        'nombreCreador': nombreCreador,
        'secciones': secciones
      };

  String toJson() => jsonEncode(toMap());
}

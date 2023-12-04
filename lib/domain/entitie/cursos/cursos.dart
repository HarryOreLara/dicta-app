import 'package:dicta_app/domain/entitie/cursos/secciones.dart';
import 'package:equatable/equatable.dart';

class Curso extends Equatable {
  final String id;
  final String nombre;
  final String fechaPublicacion;
  final String imagencurso;
  final String categoria;
  final String estado;
  final double precio;
  final String nombreCreador;
  final List<Secciones> secciones;

  const Curso.empty()
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

  const Curso(
      {required this.id,
      required this.nombre,
      required this.fechaPublicacion,
      required this.imagencurso,
      required this.estado,
      required this.nombreCreador,
      required this.secciones,
      required this.precio,
      required this.categoria});

  @override
  List<Object?> get props => [
        id,
        nombre,
        precio,
        categoria,
        fechaPublicacion,
        imagencurso,
        estado,
        nombreCreador,
        secciones
      ];
}

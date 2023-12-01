import 'package:equatable/equatable.dart';

class Curso extends Equatable {
  final String id;
  final String nombre;
  final double precio;
  final String categoria;

  const Curso.empty()
      : this(
            id: "1",
            nombre: "_empty_nombre",
            precio: 1.0,
            categoria: "_empty_categoria");

  const Curso(
      {required this.id,
      required this.nombre,
      required this.precio,
      required this.categoria});

  @override
  List<Object?> get props => [id, nombre, precio, categoria];
}

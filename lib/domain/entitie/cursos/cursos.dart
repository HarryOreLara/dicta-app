import 'package:equatable/equatable.dart';

class Curso extends Equatable {
  final String id;
  final String nombre;
  final String precio;
  final String categoria;

  const Curso(
      {required this.id,
      required this.nombre,
      required this.precio,
      required this.categoria});

  @override
  List<Object?> get props => throw UnimplementedError();
}

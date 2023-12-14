import 'package:dicta_app/domain/entitie/cursos/clases.dart';
import 'package:equatable/equatable.dart';

class Secciones extends Equatable {
  final String id;
  final String titulo;
  final List<Clases> clases;

  const Secciones(
      {required this.id, required this.titulo, required this.clases});

factory Secciones.fromMap(Map<String, dynamic> map) {
  return Secciones(
    id: map["_id"] as String,
    titulo: map["titulo"] as String,
    clases: (map["clases"] as List<dynamic>? ?? [])
        .map((clase) => Clases.fromMap(clase))
        .toList(),
  );
}

  @override
  List<Object?> get props => [titulo, clases];
}

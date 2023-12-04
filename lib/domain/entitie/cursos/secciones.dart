import 'package:dicta_app/domain/entitie/cursos/clases.dart';
import 'package:equatable/equatable.dart';

class Secciones extends Equatable {
  final String titulo;
  final List<Clases> clases;

  const Secciones({required this.titulo, required this.clases});

  @override
  List<Object?> get props => [titulo, clases];
}

import 'package:equatable/equatable.dart';

class Clases extends Equatable {
  final String id;
  final String titulo;
  final String video;

  const Clases({required this.id, required this.titulo, required this.video});

  @override
  List<Object?> get props => [titulo, video];
}

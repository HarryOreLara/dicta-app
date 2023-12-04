import 'package:equatable/equatable.dart';

class Clases extends Equatable {
  final String titulo;
  final String video;

  const Clases({required this.titulo, required this.video});

  @override
  List<Object?> get props =>[titulo, video];
}

import 'package:equatable/equatable.dart';

class Clases extends Equatable {
  final String id;
  final String titulo;
  final String video;

  const Clases({required this.id, required this.titulo, required this.video});
factory Clases.fromMap(Map<String, dynamic> map) {
  return Clases(
    id: map["_id"] as String,
    titulo: map["titulo"] as String,
    video: map["video"] as String,
  );
}
  @override
  List<Object?> get props => [titulo, video];
}

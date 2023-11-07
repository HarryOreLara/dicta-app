import 'package:equatable/equatable.dart';

class Cliente extends Equatable {
  final String id;
  final String nombre;
  final String apellidos;
  final String edad;
  final String email;
  final String genero;

  const Cliente(
      {required this.id,
      required this.nombre,
      required this.apellidos,
      required this.edad,
      required this.email,
      required this.genero});

  @override
  List<Object?> get props => [id, nombre, apellidos, edad, email, genero];
}

import 'package:equatable/equatable.dart';

class Cliente extends Equatable {
  final String id;
  final String nombre;
  final String apellidos;
  final String edad;
  final String email;
  final String genero;

  const Cliente.empty()
      : this(
            id: "1",
            nombre: "_empty_nombre",
            apellidos: "_empty_apellidos",
            edad: "_empty_edad",
            email: "_empty_email",
            genero: "_empty_genero");

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

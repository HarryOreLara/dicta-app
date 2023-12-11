import 'package:equatable/equatable.dart';

class Persona extends Equatable {
  final int id;
  final String nombre;
  final String apellidoPat;
  final String apellidoMat;
  final String dni;
  final String telefono;
  final String edad;
  final String genero;
  final int idUsuario;

  const Persona.empty()
      : this(
            id: 1,
            nombre: "_empty_nombre",
            apellidoPat: "_empty_apellidoPat",
            apellidoMat: "_empty_apellidoMat",
            dni: "_empty_dni",
            edad: "_empty_edad",
            telefono: "_empty_telefono",
            genero: "_empty_genero",
            idUsuario: 1);

  const Persona(
      {required this.id,
      required this.nombre,
      required this.apellidoPat,
      required this.apellidoMat,
      required this.edad,
      required this.dni,
      required this.telefono,
      required this.genero,
      required this.idUsuario});

  @override
  List<Object?> get props =>
      [id, nombre, apellidoPat, apellidoMat, edad, dni, telefono, genero, idUsuario];
}
